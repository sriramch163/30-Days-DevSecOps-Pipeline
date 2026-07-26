from flask import Flask, jsonify, render_template
import os

app = Flask(__name__)

ENGINE=os.getenv("ENGINE","OPA Gatekeeper")
STATUS=os.getenv("STATUS","Enabled")

@app.route("/")
def home():
    return render_template(
        "index.html",
        engine=ENGINE,
        status=STATUS
    )

@app.route("/health")
def health():
    return jsonify({
        "status":"UP",
        "engine":"OPA Gatekeeper"
    })

@app.route("/rego")
def rego():
    return jsonify({
        "language":"Rego",
        "policy":"Kubernetes Governance"
    })

if __name__=="__main__":
    app.run(host="0.0.0.0",port=5000)
