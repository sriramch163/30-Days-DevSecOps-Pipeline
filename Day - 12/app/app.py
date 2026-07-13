import os
from flask import Flask, jsonify, render_template

app = Flask(__name__)

BRANCH=os.getenv("BRANCH_NAME","main")
BUILD=os.getenv("BUILD_NUMBER","1")

@app.route("/")
def home():
    return render_template(
        "index.html",
        branch=BRANCH,
        build=BUILD
    )

@app.route("/health")
def health():
    return jsonify({
        "status":"UP",
        "branch":BRANCH,
        "build":BUILD
    })

@app.route("/pipeline")
def pipeline():
    return jsonify({
        "pipeline":"Multibranch",
        "status":"Running"
    })

if __name__=="__main__":
    app.run(host="0.0.0.0",port=5000)
