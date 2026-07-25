from flask import Flask, jsonify, render_template
import os

app = Flask(__name__)

POLICY=os.getenv("POLICY","Require Signed Images")
STATUS=os.getenv("STATUS","Enabled")

@app.route("/")
def home():
    return render_template(
        "index.html",
        policy=POLICY,
        status=STATUS
    )

@app.route("/health")
def health():
    return jsonify({
        "status":"UP",
        "policy_engine":"Kyverno"
    })

@app.route("/policy")
def policy():
    return jsonify({
        "engine":"Kyverno",
        "policy":POLICY,
        "status":STATUS
    })

if __name__=="__main__":
    app.run(host="0.0.0.0",port=5000)
