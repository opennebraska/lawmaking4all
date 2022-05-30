FROM php:latest

# If additional extensions should be added or configured

# Required
#   - PDO PGSQL
#   - Memcached

RUN apt-get update \
    && apt-get install -y libmemcached-dev zlib1g-dev libpq-dev libzip-dev \
    # Installing default extensions
    && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
    && docker-php-ext-install pdo pdo_pgsql pgsql zip \
    # Enabling PECL extensions
    && pecl install memcached-3.1.5 \
    && docker-php-ext-enable memcached
