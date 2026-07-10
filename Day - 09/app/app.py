import os
from flask import Flask, jsonify, render_template

app = Flask(__name__)

APP_NAME = os.getenv("APP_NAME", "Docker Registry Demo")
VERSION = os.getenv("VERSION", "1.0.0")

@app.route("/")
def home():
    return render_template(
        "index.html",
        app_name=APP_NAME,
        version=VERSION
    )

@app.route("/health")
def health():
    return jsonify({
        "status":"UP",
        "version":VERSION
    })

@app.route("/registry")
def registry():
    return jsonify({
        "registry":"Docker Hub",
        "image":"devsecops-flask",
        "tag":VERSION
    })

if __name__ == "__main__":
    app.run(host="0.0.0.0",port=5000)
