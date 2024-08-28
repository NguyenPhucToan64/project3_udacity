FROM python:3.10-slim-buster
# RUN apt update -y
# RUN apt install build-essential libpq-dev -y

WORKDIR /src
COPY requirements.txt requirements.txt
COPY __init__.py .
COPY app.py .
COPY config.py .

RUN pip install -r requirements.txt

# ENV DB_USERNAME=myuser_toan
# ENV DB_PASSWORD=mypassword_toan
# ENV DB_HOST=host.docker.internal
# ENV DB_PORT=5433
# ENV DB_NAME=mydatabase_toan

ENTRYPOINT python app.py