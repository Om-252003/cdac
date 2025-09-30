import requests
from bs4 import BeautifulSoup

# Fetch the page content
url = "https://en.wikipedia.org/wiki/Web_scraping"
response = requests.get(url)
soup = BeautifulSoup(response.text, "html.parser")

# Extract the first paragraph
paragraph = soup.find("p").text

# Print the result
print("First Paragraph:", paragraph)
