#Get image base
FROM python:3.10-slim
#update OS
RUN apt update -y
# Install library database
RUN apt install build-essential libpq-dev -y
#Copy file to container
COPY analytics/ ./app
#Choose folder to work 
WORKDIR /app
#Install library for app
RUN pip install -r requirements.txt
#Expose port
EXPOSE 5153
#Run app
CMD [ "python", "./app.py" ]