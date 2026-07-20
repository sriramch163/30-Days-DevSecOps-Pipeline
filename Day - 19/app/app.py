from flask import Flask, jsonify, render_template
import os

app = Flask(__name__)

IMAGE=os.getenv("IMAGE_NAME","flask-demo")
SBOM=os.getenv("SBOM_FORMAT","SPDX")

@app.route("/")
def home():
    return render_template(
        "index.html",
        image=IMAGE,
        sbom=SBOM
    )

@app.route("/health")
def health():
    return jsonify({
        "status":"UP",
        "tool":"Syft"
    })

@app.route("/sbom")
def sbom():
    return jsonify({
        "generator":"Syft",
        "format":SBOM,
        "status":"Generated"
    })

if __name__=="__main__":
    app.run(host="0.0.0.0",port=5000)
