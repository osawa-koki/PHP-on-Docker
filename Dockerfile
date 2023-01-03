FROM ubuntu:20.04

# Set the timezone
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# Install build tools and GMP(GNU Multiple Precision) library
RUN apt-get update && \
    apt-get install -y build-essential && \
    apt-get install -y libgmp-dev && \
    apt-get install -y wget && \
    apt-get install -y pkg-config

# Download PHP source code
RUN wget https://www.php.net/distributions/php-7.4.12.tar.gz && \
    tar xvzf php-7.4.12.tar.gz

# Build PHP with GMP(GNU Multiple Precision) library
WORKDIR /php-7.4.12
RUN ./configure PKG_CONFIG=/usr/local/bin/pkg-config --enable-gmp --with-gmp && \
    make && \
    make install

# Set PHP configuration
COPY php.ini /usr/local/lib/php.ini

# Set Apache configuration
COPY apache2.conf /etc/apache2/apache2.conf

# Install Apache and PHP
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get install -y php libapache2-mod-php

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Copy PHP code to Apache web root
COPY wwwroot/ /var/www/html/

# Expose Apache on port 80
EXPOSE 80

# Remove the default Apache index page
RUN rm -f /var/www/html/index.html

# Start Apache when the container is launched
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
