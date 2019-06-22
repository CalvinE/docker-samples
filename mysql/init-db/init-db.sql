-- set it so the DB is accessable from localhost. In more secure environments, make sure only the right computers can access the machine!
ALTER USER 'root'@'localhost' IDENTIFIED BY 'password';
-- UPDATE mysql.user SET host = '%' WHERE user='root';

CREATE DATABASE testdb;

USE testdb;

CREATE TABLE IF NOT EXISTS users (
  usersid INT AUTO_INCREMENT,
  email VARCHAR(255) NOT NULL,
  userpassword VARCHAR(255) NOT NULL,
  createdate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  isdisabled BOOLEAN DEFAULT 0,
  PRIMARY KEY (usersid)
);


INSERT INTO users (email, userpassword)
VALUES ('calvin.echols@mail.com', 'password');

SELECT *
FROM users;