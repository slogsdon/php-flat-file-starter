FROM composer:latest

COPY composer.lock composer.json ./
RUN composer install
COPY . .
RUN composer build && mv dist /public
