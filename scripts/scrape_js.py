import subprocess
import re
from urllib.parse import urlparse, urljoin
from pathlib import Path
import pandas as pd

TARGET_URL = 'https://lppm.itpln.ac.id'
ROOT = Path(__file__).resolve().parents[1]
OUTPUT_DIR = ROOT / 'lppm' / 'results' / 'js'
REFS_PATH = ROOT / 'refs' / 'menu_hrefs.csv'

def load_hrefs():
    """Membaca daftar href dari file CSV."""
    if not REFS_PATH.exists():
        print(f"Error: File {REFS_PATH} tidak ditemukan.")
        return []
    
    df = pd.read_csv(REFS_PATH)
    hrefs = df['href'].dropna().astype(str).tolist()
    return hrefs

def scan_js(url: str):
    """Melakukan scan tag .js dari suatu halaman URL."""
    res = subprocess.run(
        ['curl.exe', '-s', url], 
        capture_output=True, 
        text=True, 
        encoding='utf-8'
    )

    pattern = r'(?:src|href)=["\']([^"\']+\.js(?:\?[^"\']*)?)["\']'

    matches = re.findall(pattern, res.stdout)
    unique_matches = sorted(set(matches))
    filtered_matches = [m for m in unique_matches if not m.startswith(('http://', 'https://', '//'))]
 
    urls = []
    for trail in filtered_matches:
        full_url = urljoin(url, trail)
        urls.append(full_url)
 
    return urls

def download_js_file(url: str):
    """Mendownload file JS dan menyimpannya ke OUTPUT_DIR."""
    OUTPUT_DIR.mkdir(parents=True, exist_ok=True)
    
    parsed_path = urlparse(url).path 
    outfile_name = parsed_path.strip('/').replace('/', '_')
    outfile_name = outfile_name.split('?')[0]
    destination_path = OUTPUT_DIR / outfile_name
    
    print(f"Downloading: {url} -> {destination_path.name}")
    
    subprocess.run(
        ['curl.exe', '-s', '-o', str(destination_path), url]
    )

def scrape_from_href():
	hrefs = load_hrefs()
	all_js_urls = set()

	for href in hrefs:
		target = urljoin(TARGET_URL, href)
		print(f"Scanning: {target}")
		
		found_js = scan_js(target)
		all_js_urls.update(found_js)

	for js_url in sorted(all_js_urls):
		download_js_file(js_url)

if __name__ == '__main__':
    js_urls = set(scan_js(TARGET_URL))
    for js_url in js_urls:
        download_js_file(js_url)
    