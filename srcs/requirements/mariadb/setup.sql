CREATE DATABASE wordpress;
CREATE USER 'vkuklys'@'%' IDENTIFIED BY 'whynot123';
GRANT ALL PRIVILEGES ON wordpress.* TO 'vkuklys'@'%';
FLUSH PRIVILEGES;

-- ALTER USER 'root'@'localhost' IDENTIFIED BY '4242';