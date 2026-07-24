from flask import Flask, jsonify, render_template
import os

app = Flask(__name__)

IMAGE = os.getenv("IMAGE_NAME", "flask-demo:1.0.0")
STATUS = os.getenv("SIGNATURE_STATUS", "Unsigned")

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
        "status": "UP",
        "security": "Cosign"
    })

@app.route("/signature")
def signature():
    return jsonify({
        "tool": "Cosign",
        "status": STATUS,
        "verification": "Pending"
    })

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
