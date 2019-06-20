create schema mytestdb;
use mytestdb;/* Your DDL SQL statements should starts after this line */
CREATE TABLE SINGER(SINGER_NAME VARCHAR(50) NOT NULL, SEX CHAR(1) NOT NULL, AGE INTEGER NOT NULL, PRIMARY KEY (SINGER_NAME));
/* Your DDL SQL statements end before this line */
use information_schema;
select * from tables where table_schema = 'mytestdb';
select * from columns where table_schema = 'mytestdb';
