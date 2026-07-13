#!/bin/bash

echo "Current Branch"

git branch --show-current

echo ""

echo "Latest Commit"

git log --oneline -1
