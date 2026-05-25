# Importa o Flask — framework para criar a API web
from flask import Flask, jsonify

# Cria a aplicação Flask
app = Flask(__name__)

# Define a rota principal — quando acessar "/" retorna uma mensagem
@app.route('/')
def index():
    return jsonify({"mensagem": "LAB9 rodando no Docker!", "status": "ok"})

# Inicia o servidor na porta 5000, acessível externamente
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)