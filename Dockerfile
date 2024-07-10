# Use the tomsik68/xampp base image
FROM tomsik68/xampp

# Install wget and unzip
RUN apt-get update && apt-get install -y wget unzip

# Download the file from example.com and unzip it
RUN wget https://example.com/file.zip -O /tmp/file.zip && unzip /tmp/file.zip -d /www

# Copy your PHP application into the container
COPY src/ /www

EXPOSE 8080
