# Use Python base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy all files into the container
COPY . /app

# Install necessary packages directly
RUN pip install --no-cache-dir flask sympy

# Expose the port Flask will run on
EXPOSE 5000

# Run the Python app
CMD ["python", "simple_c.py"]