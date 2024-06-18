CREATE DATABASE wordpress;
CREATE USER 'wordpress_user'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress_user'@'%';
FLUSH PRIVILEGES;
