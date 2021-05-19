#!/bin/bash

echo ""
command -v composer &> /dev/null && composer --version || echo "Composer not found."
echo ""
command -v npm &> /dev/null && echo "NPM version: $(npm --version)" || echo "NPM not found."
echo ""
command -v php &> /dev/null && php -v || echo "PHP not found."
echo ""

node index.js
