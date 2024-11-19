# Use the official Alpine Linux image as the base image
FROM python:3.12-alpine3.19

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose the port the app runs on
EXPOSE 5000

# Define the command to run the application
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0", "main:app"]