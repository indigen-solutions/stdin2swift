# stdin2swift
Read the standard input and send it as a file on a OpenStack swift server.

### Require
  + python 2.6+
  + swiftclient 2.3+

### Installation

#### Other linux distributions
```
git clone https://github.com/indigen-solutions/stdin2swift.git
cd stdin2swift
make
sudo make install
```

### Usage
```
usage: stdin2swift.py [-h] -a SWIFT_AUTHURL -u SWIFT_USERNAME -p
                      SWIFT_PASSWORD [-s SIZE]
                      container filename

This program read the standard input and send it as a file on a OpenStact
swift server.

positional arguments:
  container             The remote container name
  filename              The remote file name

optional arguments:
  -h, --help            show this help message and exit
  --version             show program's version number and exit
  -a SWIFT_AUTHURL, --authUrl SWIFT_AUTHURL
                        e.g. http://exemple.com/auth
  -u SWIFT_USERNAME, --user SWIFT_USERNAME
                        e.g. Bob
  -p SWIFT_PASSWORD, --password SWIFT_PASSWORD
                        e.g. *********
  -s SIZE, --split SIZE
                        If specified this option will split output file every
                        SIZE bytes. The filename will be change to name,
                        name.00, name.01, name.02 .... (ex: 10B, 42K, 12M,
                        13.4G)
```