FROM php:8.3-fpm
RUN curl -sS https://get.symfony.com/cli/installer | bash && \
    mv /root/.symfony5/bin/symfony /usr/local/bin/symfony && \
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php --install-dir=/bin --filename=composer && \
    rm ./composer-setup.php && mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
RUN apt update && apt install unzip && useradd dev
RUN mkdir /home/dev && chown dev:dev -R /home/dev && chown dev:dev -R /var/www

