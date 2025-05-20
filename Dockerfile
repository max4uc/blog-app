FROM php:8.2-apache

# Install MySQL driver
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy custom PHP settings
COPY .docker/custom.ini /usr/local/etc/php/conf.d/

# Copy app files to Apache directory
COPY . /var/www/html/

EXPOSE 80