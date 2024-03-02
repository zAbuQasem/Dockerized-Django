# Use base image python3.10
FROM python:3.10@sha256:85de714b205693782cc48408bc48815343529987aae396b1adbbe05be5557cd7

# Create /app directory and make it our current working directory (PWD:/app)
WORKDIR /app

# Copy application to Docker container into /app
COPY . .

# Create a low privileged user
RUN useradd -ms /bin/bash runner

# Grant new user permissions to /app 
RUN chown -R runner:runner /app

# Swtich to the newly create user
USER runner

# Install django and it's dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Run migrations
RUN python /app/SimpleWebapp/manage.py migrate

# Run the application server
ENTRYPOINT ["python", "/app/SimpleWebapp/manage.py"]
CMD ["runserver", "0.0.0.0:8000"]
