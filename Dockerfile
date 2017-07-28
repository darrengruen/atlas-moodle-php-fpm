FROM php:7.1.6-fpm-alpine

LABEL maintainer "Darren Green <darren.green@meetingprotocol.com>"

RUN docker-php-ext-install \
        pdo_mysql \
        mysqli \
    && docker-php-ext-enable \
        pdo_mysql \
        mysqli \
    && echo "catch_workers_output = yes" >> /usr/local/etc/php-fpm.d/www.conf \
    && echo "php_flag[display_errors] = on" >> /usr/local/etc/php-fpm.d/www.conf \
    && echo "php_admin_flag[log_errors] = on" >> /usr/local/etc/php-fpm.d/www.conf

