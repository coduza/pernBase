CREATE DATABASE pernbase;

CREATE TABLE users(
  _id UUID DEFAULT uuid_generate_v4(),
  name VARCHAR(255) NOT NULL,
  tel VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  date DATE NOT NULL DEFAULT CURRENT_TIMESTAMP,
  role INTEGER NOT NULL,
  verification INTEGER NOT NULL,
  status INTEGER NOT NULL,
  PRIMARY KEY (_id)
);

insert into users (name, tel, email, password, role, verification, status) values ('Admin', '0711427657', 'admin@coduza.com', 'wow123', 1, 1, 1);

CREATE TABLE forgot(
  _id UUID DEFAULT uuid_generate_v4(),
  id VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  date DATE NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (_id)
);

CREATE TABLE tokens(
  _id UUID DEFAULT uuid_generate_v4(),
  userid VARCHAR(255) NOT NULL,
  token VARCHAR(255) NOT NULL,
  status INTEGER NOT NULL DEFAULT 1,
  date DATE NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (_id)
);

CREATE TABLE verifications(
  _id UUID DEFAULT uuid_generate_v4(),
  key VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  status INTEGER NOT NULL DEFAULT 1,
  date DATE NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (_id)
);


/*CREATE TABLE todos(
  todo_id SERIAL,
  user_id UUID,
  description VARCHAR(255) NOT NULL,
  PRIMARY KEY (todo_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);*/

/*insert into todos (user_id, description) values ('87a04dbd-faf1-4753-89fd-625a4a125dc7', 'clean room');*/