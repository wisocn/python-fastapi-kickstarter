#!/usr/bin/env python

from flask import Flask
from health import live_probe
from health import readiness_probe

app = Flask(__name__)

def run():
    app.run(host="0.0.0.0", port=5000)

if __name__ == "__main__":
    run()
