from flask import Flask
import logging

app = Flask(__name__)

logging.basicConfig(
    filename = 'app.log',
level=logging.INFO
)

@app.route("/")
def home():
    app.logger.info("Homepage visited")
    return "Devops Demo is running!"

if __name__ == "__main__":
   app.run(host="0.0.0.0", port=5000)

