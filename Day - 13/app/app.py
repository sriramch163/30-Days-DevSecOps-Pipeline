from flask import Flask, jsonify, render_template
import os

app = Flask(__name__)

@app.route("/")
def home():
    return render_template(
        "index.html",
        credential=os.getenv("CREDENTIAL_TYPE","Secret Text"),
        environment=os.getenv("ENVIRONMENT","Development")
    )

@app.route("/health")
def health():
    return jsonify({
        "status":"UP",
        "credential":"Configured",
        "environment":os.getenv("ENVIRONMENT","Development")
    })

@app.route("/credentials")
def credentials():
    return jsonify({
        "secret":"Protected",
        "pipeline":"Secure"
    })

if __name__=="__main__":
    app.run(host="0.0.0.0",port=5000)
