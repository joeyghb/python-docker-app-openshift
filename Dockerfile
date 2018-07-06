# Use an official Python runtime as a parent image
FROM python:3.6.5-alpine3.7

USER root

MAINTAINER MANIVANNAN.C
# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

User root
# Run app.py when the container launches
CMD ["python", "app.py"]
