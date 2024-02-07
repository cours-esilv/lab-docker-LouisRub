# Base image
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy required files
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the port for Flask
EXPOSE 5000

# Run the Flask app
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
