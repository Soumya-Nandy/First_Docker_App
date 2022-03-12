#declearing base image which is python 3 here
FROM python:3

#declearing environment variables
ENV PYTHONUNBUFFERED 1

#creating a folder
RUN mkdir /app

#changing the working directory
WORKDIR /app

#connecting requirements with the dockerfile and push the file to current working directory
COPY requirements.txt /app/

#giving the command to install the requirements written in requirements.txt file
RUN pip install -r requirements.txt

#copy the entire project into current working directory i.e, app
COPY . /app/


