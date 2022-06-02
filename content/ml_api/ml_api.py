import pickle
import numpy as np
from ast import literal_eval
from flask import Flask, request, jsonify
app = Flask(__name__)

infile = open("models/regr.pkl", "rb")
regr = pickle.load(infile)
infile.close()

# example curl query: curl -X GET http://127.0.0.1:5000 -H 'Content-Type: application/json' -d '{"data": "[0, 3, 2, 4, 5, 6, 10, 2, 5, 33, 555, 23, 33]"}'

@app.route('/')
def predict(methods=["GET"]):
    payload = request.json["data"]
    input_data = np.array(literal_eval(payload)).reshape(1, -1)
    prediction = regr.predict(input_data)

    return jsonify({
        "prediction": round(float(prediction), 3)
    })


if __name__ == '__main__':
    app.run(debug=True)
