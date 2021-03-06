# Use an official Python runtime as a parent image
FROM python:3.7.2-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available
EXPOSE 80

# Define environment variable
ENV Name World

# Run app.py when the container launches
CMD ["python", "app.py"]
