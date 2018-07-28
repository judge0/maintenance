# Maintenance
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/judge0/maintenance/blob/master/LICENSE)

Simple HTTP server that responds to GET and POST requests on every route with
your (custom) maintenance message and status 503.

## Usage

Write your message in a file (e.q. `my-message.txt`):
```
Server is undergoing maintenance.
```

Then run:
```
docker run -d -p 80:80 -v $PWD/my-message.txt:/message.txt judge0/maintenance:0.1.0
```

Visit `http://<Server IP>`.
