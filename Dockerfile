# Use the official Python base image with the desired Python version
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file to the working directory
COPY requirements.txt .

# Install the required Python packages
RUN pip install -r requirements.txt

# Copy the entire back code to the working directory
COPY . .

COPY python3 -m flask run --host=0.0.0.0
