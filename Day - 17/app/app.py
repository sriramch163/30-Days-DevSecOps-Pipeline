from flask import Flask, jsonify, render_template
import os

app = Flask(__name__)

VERSION=os.getenv("APP_VERSION","1.0.0")
CHANNEL=os.getenv("RELEASE_CHANNEL","release")

@app.route("/")
def home():
    return render_template(
        "index.html",
        version=VERSION,
        channel=CHANNEL
    )

@app.route("/health")
def health():
    return jsonify({
        "status":"UP",
        "version":VERSION
    })

@app.route("/release")
def release():
    return jsonify({
        "version":VERSION,
        "channel":CHANNEL,
        "status":"Published"
    })

if __name__=="__main__":
    app.run(host="0.0.0.0",port=5000)
