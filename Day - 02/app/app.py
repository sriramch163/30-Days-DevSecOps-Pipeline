from flask import Flask, jsonify, render_template

app = Flask(__name__)

@app.route("/")
def home():
    return render_template("index.html")

@app.route("/health")
def health():
    return jsonify(
        {
            "status": "UP",
            "application": "DevSecOps Pipeline",
            "version": "1.0"
        }
    )

@app.route("/api")
def api():
    return jsonify(
        {
            "message": "Welcome to the DevSecOps API",
            "day": 2
        }
    )

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)
