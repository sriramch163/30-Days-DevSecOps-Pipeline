from flask import Flask, jsonify, render_template
import os

app = Flask(__name__)

@app.route("/")
def home():
    return render_template(
        "index.html",
        library=os.getenv("LIBRARY_NAME","DevSecOps Shared Library"),
        version=os.getenv("LIBRARY_VERSION","v1.0")
    )

@app.route("/health")
def health():
    return jsonify({
        "status":"UP",
        "shared_library":"Configured"
    })

@app.route("/library")
def library():
    return jsonify({
        "type":"Global Shared Library",
        "version":os.getenv("LIBRARY_VERSION","v1.0")
    })

if __name__=="__main__":
    app.run(host="0.0.0.0",port=5000)
