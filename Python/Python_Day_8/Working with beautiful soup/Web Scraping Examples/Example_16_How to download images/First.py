# create "book_images" folder in the
# current working directory

import requests
from bs4 import BeautifulSoup
import os

# Step 1: Define the website URL
url = "http://books.toscrape.com/"

# Step 2: Send an HTTP request to fetch the webpage
response = requests.get(url)

# Step 3: Parse the HTML content using BeautifulSoup
soup = BeautifulSoup(response.text, "html.parser")

# Step 4: Find all image tags (<img>) inside <div class="image_container">
images = soup.select("div.image_container img")[:5]  # Select first 5 images

# Step 5: Create a folder to save the images
os.makedirs("book_images", exist_ok=True)  # Create a directory if not exists

# Step 6: Loop through the images and download each one
for idx, img in enumerate(images, start=1):
    # Step 6.1: Get the image URL (relative path)
    img_url = url + img["src"].replace("../", "")

    # Step 6.2: Send request to download the image
    img_data = requests.get(img_url).content  # Get image content in bytes

    # Step 6.3: Define the filename to save
    filename = f"book_images/book_{idx}.jpg"

    # Step 6.4: Write the image data to a file
    with open(filename, "wb") as f:  # "wb" = write binary
        f.write(img_data)

    print(f"Downloaded {filename}")

print("All images downloaded successfully!")
