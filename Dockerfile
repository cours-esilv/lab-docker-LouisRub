# Use the official Python base image with the desired Python version
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file to the working directory
COPY requirements.txt .

# Install the required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire back code to the working directory
COPY . .

# Expose the desired port (replace 8000 with your actual port)
EXPOSE 8000

# Set the entrypoint command to run the back code
CMD ["python", "app.py"]
