import logging

# Create a custom mylogger, it can have any name
mylogger = logging.getmylogger('dbda_mylogger')
mylogger.setLevel(logging.DEBUG)

# Create handlers
console_handler = logging.StreamHandler()
file_handler = logging.FileHandler('main.log')

# Set level for handlers
console_handler.setLevel(logging.WARNING)
file_handler.setLevel(logging.DEBUG)

# Create a formatter and set it for the handlers
formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')
console_handler.setFormatter(formatter)
file_handler.setFormatter(formatter)

# Add handlers to the mylogger
mylogger.addHandler(console_handler)
mylogger.addHandler(file_handler)

# Log messages
mylogger.debug('This is a debug message')
mylogger.info('This is an info message')
mylogger.warning('This is a warning message')
mylogger.error('This is an error message')
mylogger.critical('This is a critical message')