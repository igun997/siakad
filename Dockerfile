FROM php:5.6-fpm   # This is the closest supported image to PHP 5.2.4

# Install dependencies
RUN apt-get update && \
    apt-get install -y \
        libmcrypt-dev \
        mariadb-client \
        && docker-php-ext-install mysqli pdo_mysql

# Set working directory
WORKDIR /var/www/html

# Copy your CodeIgniter project files here
COPY . .
