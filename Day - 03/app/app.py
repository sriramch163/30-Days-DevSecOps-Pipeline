from flask import Flask, jsonify, render_template

app = Flask(__name__)

@app.route("/")
def home():
    return render_template("index.html")

@app.route("/health")
def health():
    return jsonify(
        {
            "status":"UP"
        }
    )

@app.route("/api")
def api():
    return jsonify(
        {
            "message":"Welcome to DevSecOps"
        }
    )

if __name__=="__main__":
    app.run(debug=True)
