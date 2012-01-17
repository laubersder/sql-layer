CREATE TABLE parent(id INT, PRIMARY KEY(id), name VARCHAR(256) NOT NULL, UNIQUE(name), title VARCHAR(256)) engine=akibandb;
CREATE TABLE child(id INT, PRIMARY KEY(id), pid INT, CONSTRAINT `__akiban_fk_10` FOREIGN KEY `__akiban_fk_10`(pid) REFERENCES parent(id), name VARCHAR(256) NOT NULL, UNIQUE INDEX pid_and_name(pid,name)) engine=akibandb;

CREATE TABLE sa(a INT NOT NULL, UNIQUE(a), f INT NOT NULL);
CREATE TABLE sb(b INT NOT NULL, UNIQUE(b), g INT NULL, UNIQUE(g));
CREATE TABLE sc(c INT NOT NULL, UNIQUE(c));

CREATE TABLE ma(a1 INT NOT NULL, a2 INT NOT NULL, UNIQUE(a1, a2));
CREATE TABLE mb(b1 INT NOT NULL, b2 INT NOT NULL, UNIQUE(b1, b2));
CREATE TABLE mc(c1 INT NOT NULL, c2 INT NOT NULL, UNIQUE(c1, c2));