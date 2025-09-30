
# soup.find_all("h3"):
    # Searches for all <h3> tags in the HTML.

# [:5]:
    # Selects only the first 5 <h3> elements.

# books: A list containing 5 <h3> elements,
# each representing a book title.

# for idx, book in enumerate(books, start=1):
    # enumerate(books, start=1):

    # Iterates over the books list.

    # idx: The index (1 to 5).

    # book: Each <h3> element.

# print(f"{idx}. {book.a['title']}")

    # book.a: Finds the <a> tag inside <h3>
    # (since book titles are inside <a>).

    # book.a['title']: Extracts the title attribute
    # of the <a> tag (which contains the book title).

# print(f"{idx}. {book.a['title']}")
    # Uses f-string to format and print the
    # book title with its index.

import requests
from bs4 import BeautifulSoup

url = "http://books.toscrape.com/"
response = requests.get(url)
soup = BeautifulSoup(response.text, "html.parser")

# Extract the first 5 book titles
books = soup.find_all("h3")[:5]

for idx, book in enumerate(books, start=1):
    print(f"{idx}. {book.a['title']}")
