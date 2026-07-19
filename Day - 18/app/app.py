from flask import Flask, jsonify, render_template
import os

app = Flask(__name__)

IMAGE=os.getenv("IMAGE_NAME","flask-demo")
STATUS=os.getenv("SCAN_STATUS","Pending")

@app.route("/")
def home():
    return render_template(
        "index.html",
        image=IMAGE,
        status=STATUS
    )

@app.route("/health")
def health():
    return jsonify({
        "status":"UP",
        "scanner":"Trivy"
    })

@app.route("/scan")
def scan():
    return jsonify({
        "tool":"Trivy",
        "result":"Ready",
        "severity":"Critical, High, Medium, Low"
    })

if __name__=="__main__":
    app.run(host="0.0.0.0",port=5000)
