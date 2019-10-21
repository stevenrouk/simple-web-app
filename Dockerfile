

# WORKDIR /usr/src/app
# COPY requirements.txt .
# RUN pip install -r requirements.txt
# COPY . .

# Dockerfile template from https://github.com/michaellouisdyer/doggo.name/blob/master/doggo-app/Dockerfile

# Use an official Python runtime as a parent image
#FROM continuumio/anaconda3
FROM python:3.6-slim

# Set the working directory to /simple-app
WORKDIR /simple-app

# Copy the current directory contents into the container at /simple-app
ADD . .

# Install any needed packages specified in requirements.txt
#RUN pip install --trusted-host pypi.python.org -r requirements.txt
RUN pip install -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 8080

# Run app.py when the container launches
CMD ["python", "app.py"]