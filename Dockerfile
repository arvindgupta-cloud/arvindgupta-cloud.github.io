# Use a lightweight official Python 3.10 image
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy all files from the current directory into /app
COPY . .

# Expose port 8000 so it can be accessed from outside the container
EXPOSE 8000

# Start a simple Python HTTP server on port 8000
# This keeps the container running
CMD ["python", "-m", "http.server", "8000"]
