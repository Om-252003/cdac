import shutil

#  Python allows you to quickly create zip/tar archives.
# Following command will zip entire directory

# here "myzip.zip" will be created of the current working directory (. is given) and that zip file will be stored in the current working directory itself.

shutil.make_archive("myzip","zip",".")
print("Done")

