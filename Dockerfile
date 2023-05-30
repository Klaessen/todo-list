# Use the official Python base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Install Flask
RUN pip install --no-cache-dir flask

# Copy the Flask application code into the container
COPY . .

# Expose the port that the Flask server will be running on
EXPOSE 5000

# Start the Flask server
CMD ["python", "app.py"]