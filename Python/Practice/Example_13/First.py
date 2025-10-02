
# Find all <p> tags using soup.find_all("p").

# Filter out empty paragraphs using a generator
# (next() with strip()).

# Select the first non-empty paragraph
# to display meaningful content.

import requests
from bs4 import BeautifulSoup

url = "https://en.wikipedia.org/wiki/Python_(programming_language)"
response = requests.get(url)
soup = BeautifulSoup(response.text, "html.parser")

# Extract the title of the page
title = soup.find("h1").text

# Find all paragraphs and get the first non-empty one
paragraphs = soup.find_all("p")

print("Title:", title)
print("Let's display paragraphs")
for p in paragraphs:
    print(p.text)