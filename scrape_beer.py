import os
import pandas as pd

from splinter import Browser
from bs4 import BeautifulSoup
from webdriver_manager.chrome import ChromeDriverManager
from pprint import pprint

def scrape():
    # browser = init_browser()
    executable_path = {'executable_path': ChromeDriverManager().install()}
    browser = Browser('chrome', **executable_path, headless=False)

    listings = {}

    url = "https://beerme.com/brewerylist.php"
    browser.visit(url)

    html = browser.html
    soup = BeautifulSoup(html, "html.parser")

    # Quit the browser
    browser.quit()

    return soup.find(id="content").find('ul').find_all('ul')

if __name__ == '__main__':
    brewery_data = []

    for entry in scrape():
        brewery_raw_entry = entry.text.replace("\n", "").split(', ')
        brewery_data.append({'brewery_name': brewery_raw_entry[0], 'country': brewery_raw_entry[-1]})

    pd.DataFrame(brewery_data).to_csv(os.path.join('.', 'data', 'brewery_country.csv'))
