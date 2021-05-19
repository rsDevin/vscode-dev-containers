#!/bin/bash

echo ""
command -v composer &> /dev/null && composer --version || echo "Composer not found."
echo ""
command -v npm &> /dev/null && echo "NPM version: $(npm --version)" || echo "NPM not found."
echo ""
command -v php &> /dev/null && php -v || echo "PHP not found."
echo ""

echo "Listening at http://localhost:4000"
php -S 0.0.0.0:4000 > /dev/null 2>&1 
