from playwright.sync_api import sync_playwright
from pathlib import Path

from scrape.scrape_js import OUTPUT_DIR

ROOT = Path(__file__).resolve().parents[1]
OUTPUT_DIR = ROOT / 'results' / 'hrefs'
URL = 'https://simpelmas.itpln.ac.id/'
XPATH = '/html/body/div[1]/header/div[2]/nav'

def scan_menu_href():
	result = ''
	with sync_playwright() as p:
		browser = p.chromium.launch(headless=True)
		page = browser.new_page(viewport={'width': 1920, 'height': 1080})
		page.goto(URL)
		nav_locator = page.locator(f'xpath={XPATH}/*')
		nav_locator.first.wait_for(state='attached', timeout=10000)

		child_elements = nav_locator.all()
		print(f'Ditemukan {len(child_elements)} elemen anak:')

		for idx, child in enumerate(child_elements, 1):
			tag_name = child.evaluate('el => el.tagName.toLowerCase()')
			text = child.text_content().strip()
			href = child.get_attribute('href')
			result += f'{idx}. Tag: <{tag_name}> | Text: \'{text}\' | Href: {href}\n'

		browser.close()
		return result

if __name__ == '__main__':
    result = scan_menu_href()
    if not OUTPUT_DIR.exists():
        OUTPUT_DIR.mkdir(parents=True, exist_ok=True)
    filename = 'nav-bar_menu.txt'
    filepath = OUTPUT_DIR / filename
    with open(filepath, 'w', encoding='utf-8') as f:
        f.write(result)