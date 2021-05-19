
FROM mcr.microsoft.com/vscode/devcontainers/base:focal

ENV LC_ALL en_US.UTF-8
ENV DEBIAN_FRONTEND noninteractive;

# Install helper tools
RUN apt-get update \
    && apt-get -y install --no-install-recommends \
        software-properties-common \
        pv \
        jq


# Add Node for build tools
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g grunt sass