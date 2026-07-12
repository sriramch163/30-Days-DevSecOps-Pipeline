from flask import Flask, jsonify, render_template
import os

app = Flask(__name__)

@app.route("/")
def home():
    return render_template(
        "index.html",
        repo=os.getenv("GITHUB_REPOSITORY","DevSecOps Demo")
    )

@app.route("/health")
def health():
    return jsonify({
        "status":"UP",
        "tool":"Jenkins",
        "integration":"GitHub"
    })

@app.route("/webhook")
def webhook():
    return jsonify({
        "trigger":"Git Push",
        "pipeline":"Automatic"
    })

if __name__=="__main__":
    app.run(host="0.0.0.0",port=5000)
