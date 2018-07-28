#!/usr/bin/env python3
from flask import Flask

app = Flask(__name__)

with open("message.txt", "r") as f:
    message = f.read()

@app.errorhandler(404)
@app.route("/<path:subpath>", methods=["GET", "POST"])
def index(subpath):
  return (message, 503)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port="80")