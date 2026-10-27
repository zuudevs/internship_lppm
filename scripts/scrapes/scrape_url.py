from pathlib import Path
import re

import pandas
import urllib3 

TARGET = 'lppm'
SAVED_ON = Path(__file__).resolve().parents[2] / 'observability' / TARGET / 'results' / 'urls'
BASE_URL = f'https://{TARGET}.itpln.ac.id'
HEADERS = {
    "User-Agent": (
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:121.0)"
        " Gecko/20100101 Firefox/121.0"
    ),
    "Accept": (
        "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8"
    ),
    "Accept-Language": "en-US,en;q=0.5",
    "Accept-Encoding": "gzip, deflate, br",
    "DNT": "1",  # Do Not Track
    "Sec-GPC": "1",  # Global Privacy Control
    "Sec-Fetch-Dest": "document",
    "Sec-Fetch-Mode": "navigate",
    "Sec-Fetch-Site": "none",
    "Sec-Fetch-User": "?1",
    "Upgrade-Insecure-Requests": "1",
    "Connection": "keep-alive",
}

http = urllib3.PoolManager()

def main():
    res = http.request(
        'GET',
        BASE_URL,
        headers=HEADERS
    )
    
    if res.status == 200:
        body = res.data.decode(encoding='utf-8', errors='ignore')
        pattern = r'https?:\/\/' + TARGET + r'\.itpln\.ac\.id(?:\/[\w\-.]+)*\/?'
        matches = re.findall(pattern, body)
        if matches:
            url = {'url' : list(sorted(set(matches)))}
            matched = re.search(r'(https?:\/\/)(' + TARGET + r'\.itpln\.ac\.id(?:\/[\w\-.]+)*\/?)', BASE_URL)
            if matched:
                preserve_filename = matched.group(2)
                preserve_filename = preserve_filename.replace('/', '%')
                df = pandas.DataFrame(url)
                
                if not SAVED_ON.exists():
                    SAVED_ON.mkdir(parents=True, exist_ok=True)
                    
                df.to_csv(SAVED_ON / f"{preserve_filename}.csv", index_label='no')
            
if __name__ == '__main__':
    main()