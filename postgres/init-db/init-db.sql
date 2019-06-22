CREATE TABLE users (
	usersid serial PRIMARY KEY,
	email VARCHAR(255) UNIQUE NOT NULL,
	password VARCHAR(50) NOT NULL,
	createdate TIMESTAMP NOT NULL DEFAULT NOW(),
	isdisabled BOOLEAN NOT NULL DEFAULT false
);

INSERT INTO users (email, password)
VALUES ('calvin.echols@mail.com', 'password');

SELECT *
FROM users;