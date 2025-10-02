# Loading Images

from PIL import Image

img=Image.open("Balls.jpg")
print(img.height)
print(img.width)
print(img.size)
print(img.format)
img.show()