# Use official PHP image with Apache
FROM php:8.1-apache

# Enable mysqli extension
RUN docker-php-ext-install mysqli

# Copy all files to container web root
COPY . /var/www/html/

# Set working directory
WORKDIR /var/www/html/

# Expose port 80
EXPOSE 80
