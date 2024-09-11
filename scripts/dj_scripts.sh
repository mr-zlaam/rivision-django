#!/bin/bash

# Prompt the user for the app name
read -p "Enter the name of the Django app: " app_name

# Navigate to the src directory
cd src || { echo "Failed to change directory to 'src'"; exit 1; }

# Run the Django startapp command with the provided app name
python manage.py startapp "$app_name"

echo "Django app '$app_name' has been created successfully."
