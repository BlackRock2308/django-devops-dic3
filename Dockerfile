# Use an official Python runtime as the base image
FROM python:3.9

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# ...
ENV APP_VERSION "1.0" 
# ...

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app/
COPY . /app/

# Install system dependencies
RUN apt-get update && \
    apt-get install -y postgresql-client

# Install Python dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Run Django migrations to create the database and tables
RUN python manage.py migrate



# Expose the port the app runs on
EXPOSE 8000

# Command to run the application
CMD ["gunicorn", "python", "manage.py", "runserver", "0.0.0.0:8000","djangodevops.wsgi:application"]








