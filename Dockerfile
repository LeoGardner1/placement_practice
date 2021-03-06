FROM php:7.2.24-apache
RUN apt-get update && apt-get install -y libicu-dev libpq-dev \
&& docker-php-ext-configure intl \
&& docker-php-ext-install intl \
&& docker-php-ext-configure pdo_mysql \
&& docker-php-ext-install pdo_mysql \
&& docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
&& docker-php-ext-install pdo pdo_pgsql pgsql
EXPOSE 5432
EXPOSE 80
