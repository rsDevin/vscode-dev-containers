#!/bin/bash

echo ""
command -v composer &> /dev/null && composer --version || echo "Composer not found."
echo ""
command -v node &> /dev/null && echo "Node version: $(node -v)" || echo "Node not found."
echo ""
command -v php &> /dev/null && php -v || echo "PHP not found."
echo ""

node index.js
