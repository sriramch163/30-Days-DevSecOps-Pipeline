from flask import Flask, jsonify, render_template
import os

app = Flask(__name__)

IMAGE=os.getenv("IMAGE_NAME","flask-demo")
SCANNER=os.getenv("SCANNER","Grype")

@app.route("/")
def home():
    return render_template(
        "index.html",
        image=IMAGE,
        scanner=SCANNER
    )

@app.route("/health")
def health():
    return jsonify({
        "status":"UP",
        "scanner":"Grype"
    })

@app.route("/vulnerabilities")
def vulnerabilities():
    return jsonify({
        "tool":"Grype",
        "scan":"Ready",
        "supports":[
            "Docker Images",
            "SBOM",
            "Filesystem"
        ]
    })

if __name__=="__main__":
    app.run(host="0.0.0.0",port=5000)
