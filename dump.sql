#PRAGMA foreign_keys=OFF;
#BEGIN TRANSACTION;
CREATE TABLE django_migrations (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  app VARCHAR(255) NOT NULL
);
CREATE TABLE table_todo_person (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTO_INCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO django_migrations VALUES(1,'table_todo','0001_initial','2023-06-27 08:56:55.810487');
CREATE TABLE IF NOT EXISTS "table_todo_person" ("id" integer NOT NULL PRIMARY KEY AUTO_INCREMENT, "first_name" varchar(100) NOT NULL, "last_name" varchar(100) NOT NULL, "address" text NOT NULL);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('django_migrations',1);
#COMMIT;
