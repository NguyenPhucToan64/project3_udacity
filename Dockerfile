FROM python:3.10-slim

RUN apt update -y

RUN apt install build-essential libpq-dev -y

COPY analytics/ ./app

WORKDIR /app

RUN pip install -r requirements.txt

EXPOSE 5153
CMD [ "python", "./app.py" ]