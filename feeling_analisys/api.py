from flask import Flask
from textblob import TextBlob
app = Flask(__name__)
from googletrans import Translator

@app.route('/')
def home():
    return "Healthy"

@app.route('/sentimento/<frase>')
def sentimento(frase):
  polaridade = TextBlob(frase).sentiment.polarity
  return "polaridade: {}".format(polaridade)

# @app.route('/v2/sentimento/<frase>')
# def sentimento(frase):
#   translator = Translator()
#   en = translator.translate(frase, dest='en')
#   polaridade = TextBlob(en.text).sentiment.polarity
#   return "polaridade: {}".format(polaridade)

app.run(debug=True, host='0.0.0.0', port=5000)