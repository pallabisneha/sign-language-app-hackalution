from flask import Flask, render_template
from final_pred import run_model  # Create a function in final_pred.py to call

app = Flask(__name__)

@app.route('/')
def index():
    return run_model()  # Or return render_template('index.html') if using templates

if __name__ == "__main__":
    app.run()
