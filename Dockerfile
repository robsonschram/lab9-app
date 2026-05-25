# Define a imagem base — Python 3.11 versão leve
FROM python:3.11-slim

# Define a pasta de trabalho dentro do container
WORKDIR /app

# Copia o arquivo de dependências para dentro do container
COPY requirements.txt .

# Instala as dependências listadas no requirements.txt
RUN pip install -r requirements.txt

# Copia todos os demais arquivos do projeto para o container
COPY . .

# Documenta que o container usará a porta 5000
EXPOSE 5000

# Comando que executa quando o container iniciar
CMD ["python", "app.py"]