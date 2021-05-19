
FROM mcr.microsoft.com/vscode/devcontainers/base:focal

ENV LC_ALL en_US.UTF-8
ENV DEBIAN_FRONTEND noninteractive;

# Install helper tools
RUN apt-get update \
    && apt-get -y install --no-install-recommends \
        software-properties-common \
        pv \
        jq

# Install PHP
RUN add-apt-repository ppa:ondrej/php \
    && apt-get update \
    && apt-get -y install php8.0

# Install Composer
ENV COMPOSER_HOME /composer
ENV PATH "/composer/vendor/bin:$PATH"
ENV COMPOSER_ALLOW_SUPERUSER 1
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer --2

# Add Node for build tools
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g grunt sass