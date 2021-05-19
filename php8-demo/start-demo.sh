#!/bin/bash

echo ""
command -v composer &> /dev/null && composer --version || echo "Composer not found."
echo ""
command -v node &> /dev/null && echo "Node version: $(node -v)" || echo "Node not found."
echo ""
command -v php &> /dev/null && php -v || echo "PHP not found."
echo ""

echo "Listening at http://localhost:5000"
php -S 0.0.0.0:5000 > /dev/null 2>&1 
