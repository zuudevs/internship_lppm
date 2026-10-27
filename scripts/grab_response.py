import json
from pathlib import Path
from urllib.parse import urljoin, urlparse
import requests
import pandas as pd
import re

BASE_URL = 'https://simpelmas.itpln.ac.id'

ROOT = Path(__file__).resolve().parents[1]
APIS_PATH = ROOT / 'results' / 'apis.csv'
RESULTS_DIR = ROOT / 'results' / 'responses'

def clean_filename(route: str, method: str) -> str:
    """
    Mengubah route URL dan method menjadi nama file JSON yang aman.
    Contoh: 'GET', 'api/super-admin.php?action=list_accounts' 
    Menjadi: 'GET_api_super-admin.php_action_list_accounts.json'
    """
    parsed = urlparse(route)
    clean_str = f"{parsed.path}_{parsed.query}" if parsed.query else parsed.path
    safe_name = re.sub(r'[^a-zA-Z0-9_-]', '_', clean_str).strip('_')
    
    return f"{method}_{safe_name}.json"

def store_response_json(data: dict | list, route: str, method: str):
    """
    Menyimpan data JSON langsung ke dalam file .json dengan format terstruktur (indent=2)
    """
    RESULTS_DIR.mkdir(parents=True, exist_ok=True)
    
    filename = clean_filename(route, method)
    filepath = RESULTS_DIR / filename
    
    with open(filepath, 'w', encoding='utf-8') as f:
        json.dump(data, f, ensure_ascii=False, indent=2)
        
    print(f" -> Saved to JSON: {filepath}")

def load_and_test_routes():
    df = pd.read_csv(APIS_PATH, skipinitialspace=True, on_bad_lines='skip', engine='python')
    
    for index, row in df.iterrows():
        route = str(row['route']).strip()
        method = str(row['method']).strip().upper()
        
        full_url = urljoin(BASE_URL, route)
        print(f"[{method}] Testing: {full_url}")
        
        try:
            res = requests.request(method=method, url=full_url, timeout=10)
            
            if res.ok:
                try:
                    data = res.json()
                    print(" -> Success! Valid JSON response received.")
                    store_response_json(data, route, method)
                        
                except Exception as e:
                    print(f" -> Response bukan JSON valid: {e}")
                    print(f" -> Snippet Response: {res.text[:100]}")
            else:
                print(f" -> Error Status: {res.status_code}")
                
        except requests.exceptions.RequestException as err:
            print(f" -> Connection Error: {err}")
            
        print("-" * 50)

if __name__ == '__main__':
    load_and_test_routes()