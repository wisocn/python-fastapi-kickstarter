#!/usr/bin/env python

from flask import Flask

app = Flask(__name__)

@app.get("/live")
def live():
    return {
        "message": "Hello, Nix!"
    }