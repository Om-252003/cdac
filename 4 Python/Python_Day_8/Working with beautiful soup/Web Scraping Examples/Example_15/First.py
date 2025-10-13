# keep "my.html" inside the same folder where your python project is running

import requests
from bs4 import BeautifulSoup

# Load the HTML file
with open('Sample.html', 'r') as file:
    html_content = file.read()

# Parse the HTML content
soup = BeautifulSoup(html_content, 'html.parser')

# Scrape the title
title = soup.title.string
print(f"Title: {title}")

# Scrape the main heading
main_heading = soup.h1.string
print(f"Main Heading: {main_heading}")

# Scrape all paragraphs
paragraphs = soup.find_all('p')
for i, p in enumerate(paragraphs, start=1):
    print(f"Paragraph {i}: {p.text}")

# Scrape all links
links = soup.find_all('a')
for link in links:
    print(f"Link text: {link.text}, URL: {link['href']}")

# Scrape list items
list_items = soup.find_all('li')
for i, item in enumerate(list_items, start=1):
    print(f"List Item {i}: {item.text}")