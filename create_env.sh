#!/bin/sh

ENV_FILE=".env"

if [ -f "$ENV_FILE" ]; then
    echo ".env file already exists."
    exit 0
fi

echo "Creating .env file..."

read -p "Enter the WordPress URL: " WP_URL
read -p "Enter the Database Name: " DB_NAME
read -p "Enter the Database User: " DB_USER
read -p "Enter the Database Password: " DB_PASSWORD
read -p "Enter the WordPress Site Title: " WP_TITLE
read -p "Enter the WordPress Admin Username: " WP_ADMIN_NAME
read -p "Enter the WordPress Admin Password: " WP_ADMIN_PASS
read -p "Enter the WordPress Admin Email: " WP_ADMIN_EMAIL
read -p "Enter the WordPress User Name: " WP_USER_NAME
read -p "Enter the WordPress User Email: " WP_USER_EMAIL
read -p "Enter the WordPress User Password: " WP_USER_PASS

cat <<EOL >> $ENV_FILE
WP_URL=$WP_URL
DB_NAME=$DB_NAME
DB_USER=$DB_USER
DB_PASSWORD=$DB_PASSWORD
WP_TITLE=$WP_TITLE
WP_ADMIN_NAME=$WP_ADMIN_NAME
WP_ADMIN_PASS=$WP_ADMIN_PASS
WP_ADMIN_EMAIL=$WP_ADMIN_EMAIL
WP_USER_NAME=$WP_USER_NAME
WP_USER_EMAIL=$WP_USER_EMAIL
WP_USER_PASS=$WP_USER_PASS
EOL

echo ".env file created successfully."
