#!/usr/bin/env python

from flask import Flask

app = Flask(__name__)

@app.get("/ready")
def ready():
    return {
        "message": "Hello, Nix!"
    }