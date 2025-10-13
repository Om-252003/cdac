from bs4 import BeautifulSoup

# Read the HTML file
with open("Sample.html", "r", encoding="utf-8") as file:
    content = file.read()
"""
The open() function is used to open the file "Sample.html".

"r" specifies that the file is opened in read mode (so we are reading the contents of the file, not writing to it).

encoding="utf-8" ensures that the file is read using UTF-8 encoding, which prevents encoding issues with special characters.

"""


# Parse the HTML
soup = BeautifulSoup(content, "html.parser")

"""

BeautifulSoup is a class from the bs4 (BeautifulSoup) library that helps parse and manipulate HTML.

content is the raw HTML string read from the file.

"html.parser" is the built-in Python parser used to parse the HTML structure.

What happens internally?

BeautifulSoup parses the raw HTML string into a structured format (a parse tree).

It allows easy navigation and manipulation of HTML elements like <div>, <p>, <a>, etc.

The result:

soup is now a BeautifulSoup object, representing the parsed HTML document.

It allows us to interact with the HTML using various methods like .find(), .find_all(), .text, etc.

"""

# Extract data
title = soup.find("h1").text
info = soup.find("p", class_="info").text
list_items = [li.text for li in soup.find("ul", id="items").find_all("li")]

# Print extracted data
print("Title:", title)
print("Info:", info)
print("List Items:", list_items)
