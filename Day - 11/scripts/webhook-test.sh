#!/bin/bash

echo "Modify README.md"

echo "GitHub Webhook Test" >> README.md

git add .

git commit -m "Testing Jenkins Webhook"

git push origin main
