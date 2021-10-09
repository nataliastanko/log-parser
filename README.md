# Log parser

## Task description

- Write a ruby script that receives a log as argument (```webserver.log``` is provided)
- Program runs and prints the expected output:

1. Returns list of webpages with most page views ordered from most pages views to less page views

Expected output example
    ...
    /home 90 visits
    /index 80 visits
    ...

2. Returns list of webpages with most unique page views also ordered

Expected output example

    ...
    /about/2 8 unique views
    /index 5 unique views
    ...

### Test the app

    rspec
    rubocop

## TODO list

steps

- coverage tests + coverage/ to .gitignore
- create lib and bin
- handle exceptions
- modules group documention
