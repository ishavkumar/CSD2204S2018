MariaDB [(none)]> use CSD2204S18
Database changed
MariaDB [CSD2204S18]> show table
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [CSD2204S18]> show table;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [CSD2204S18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| customer             |
+----------------------+
1 row in set (0.03 sec)

MariaDB [CSD2204S18]> select * from Customer;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321002     |   32 |
| C02    | Bob Marley      | BM       | Toronto    | 321222     |   38 |
| C03    | Cherlies Theron | Cher     | New York   | 321562     |   25 |
| C04    | Denial Jack     | DJ       | Brazil     | 367562     |   27 |
| C05    | Donna Newman    | New      | Toronto    | 363462     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 323362     |   48 |
| C07    | Bobby Chacko    | chac     | New York   | 362062     |   29 |
| C08    | Ashko charles   | AK       | USA        | 364562     |   56 |
| C09    | Tony Special    | Specie   | USA        | 254562     |   62 |
| C10    | Jack sp         | Sparrow  | New Jersey | 252562     |   22 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.08 sec)

MariaDB [CSD2204S18]> create table person()
    -> select * from Customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')
select * from Customer' at line 1
MariaDB [CSD2204S18]> create table person()
    -> select * from Customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')
select * from Customer' at line 1
MariaDB [CSD2204S18]> create table person( )
    -> select * from Customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')
select * from Customer' at line 1
MariaDB [CSD2204S18]> create table person(
    -> ID integer(3);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 2
MariaDB [CSD2204S18]> 
MariaDB [CSD2204S18]> ID integer(3);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'ID integer(3)' at line 1
MariaDB [CSD2204S18]> create table person(
    -> ID integer(3),
    -> lastname varchar(255) not  null,
    -> firstname varchar(255) not null,
    -> age integer(3),
    -> constraint PK_person primary key(ID, lastname));
Query OK, 0 rows affected (0.34 sec)

MariaDB [CSD2204S18]> 
MariaDB [CSD2204S18]> desc person;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| ID        | int(3)       | NO   | PRI | NULL    |       |
| lastname  | varchar(255) | NO   | PRI | NULL    |       |
| firstname | varchar(255) | NO   |     | NULL    |       |
| age       | int(3)       | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.10 sec)

MariaDB [CSD2204S18]> show index person;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'person' at line 1
MariaDB [CSD2204S18]> show index from person;
+--------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table  | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+--------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| person |          0 | PRIMARY  |            1 | ID          | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
| person |          0 | PRIMARY  |            2 | lastname    | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
+--------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> create table order(
    -> orderID integer(3) not null,
    -> ordernumber integer(3) not null,
    -> personID integer(3),
    -> primary key(orderID),
    -> constraint FK_personOrder foreign key(personID) references person(ID));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'order(
orderID integer(3) not null,
ordernumber integer(3) not null,
personID in' at line 1
MariaDB [CSD2204S18]> create table order(
    -> orderID integer(3) not null,
    -> ordernumber integer(3) not null,
    -> personID integer(3),
    -> primary key(orderID),
    -> constraint FK_personOrder foreign key(personID) 
    -> references person(ID));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'order(
orderID integer(3) not null,
ordernumber integer(3) not null,
personID in' at line 1
MariaDB [CSD2204S18]> create table order(
    -> orderID integer(3) not null,
    -> ordernumber integer(3) not null,
    -> personID integer(3),
    -> primary key(orderID),
    -> constraint FK_personOrder foreign key(personID) references person(ID));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'order(
orderID integer(3) not null,
ordernumber integer(3) not null,
personID in' at line 1
MariaDB [CSD2204S18]> create table Order (
    -> orderID integer(3) not null,
    -> ordernumber integer(3) not null,
    -> personID integer(3),
    -> primary key(orderID),
    -> constraint FK_personOrder foreign key(personID) references person(ID));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'Order (
orderID integer(3) not null,
ordernumber integer(3) not null,
personID i' at line 1
MariaDB [CSD2204S18]> create table Order ( OrderID integer(3) NOT NULL, OrderNumber integer(3) NOT NULL, PersonID integer(3), primary key (OrderID), CONSTRAINT FK_Personorder FOREIGN KEY (PersonID) REFERENCES person(ID));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'Order ( OrderID integer(3) NOT NULL, OrderNumber integer(3) NOT NULL, PersonID i' at line 1
MariaDB [CSD2204S18]> CREATE TABLE Order ( OrderID integer(3) NOT NULL, OrderNumber integer(3) NOT NULL, PersonID integer(3), primary key (OrderID), CONSTRAINT FK_Personorder FOREIGN KEY (PersonID) REFERENCES person(ID));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'Order ( OrderID integer(3) NOT NULL, OrderNumber integer(3) NOT NULL, PersonID i' at line 1
MariaDB [CSD2204S18]> CREATE TABLE Orders ( OrderID integer(3) NOT NULL, OrderNumber integer(3) NOT NULL, PersonID integer(3), primary key (OrderID), CONSTRAINT FK_Personorder FOREIGN KEY (PersonID) REFERENCES person(ID));
Query OK, 0 rows affected (0.25 sec)

MariaDB [CSD2204S18]> desc orders;
+-------------+--------+------+-----+---------+-------+
| Field       | Type   | Null | Key | Default | Extra |
+-------------+--------+------+-----+---------+-------+
| OrderID     | int(3) | NO   | PRI | NULL    |       |
| OrderNumber | int(3) | NO   |     | NULL    |       |
| PersonID    | int(3) | YES  | MUL | NULL    |       |
+-------------+--------+------+-----+---------+-------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> shoe create table orders;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'shoe create table orders' at line 1
MariaDB [CSD2204S18]> show index from orders;
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table  | Non_unique | Key_name       | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| orders |          0 | PRIMARY        |            1 | OrderID     | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
| orders |          1 | FK_Personorder |            1 | PersonID    | A         |           0 |     NULL | NULL   | YES  | BTREE      |         |               |
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> show create table orders;
+--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table  | Create Table                                                                                                                                                                                                                                                                                                     |
+--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| orders | CREATE TABLE `orders` (
  `OrderID` int(3) NOT NULL,
  `OrderNumber` int(3) NOT NULL,
  `PersonID` int(3) DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `FK_Personorder` (`PersonID`),
  CONSTRAINT `FK_Personorder` FOREIGN KEY (`PersonID`) REFERENCES `person` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 |
+--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> desc customer;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.03 sec)

MariaDB [CSD2204S18]> create table c1 as select * from customer;
Query OK, 10 rows affected (0.23 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> create table c2 as select name,postalCode from customer where city="toronto";
Query OK, 3 rows affected (0.22 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> desc c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from c1;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321002     |   32 |
| C02    | Bob Marley      | BM       | Toronto    | 321222     |   38 |
| C03    | Cherlies Theron | Cher     | New York   | 321562     |   25 |
| C04    | Denial Jack     | DJ       | Brazil     | 367562     |   27 |
| C05    | Donna Newman    | New      | Toronto    | 363462     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 323362     |   48 |
| C07    | Bobby Chacko    | chac     | New York   | 362062     |   29 |
| C08    | Ashko charles   | AK       | USA        | 364562     |   56 |
| C09    | Tony Special    | Specie   | USA        | 254562     |   62 |
| C10    | Jack sp         | Sparrow  | New Jersey | 252562     |   22 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from c2;
+--------------+------------+
| name         | postalCode |
+--------------+------------+
| Bob Marley   | 321222     |
| Donna Newman | 363462     |
| Eston M.     | 323362     |
+--------------+------------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> create table c3 like customer;
Query OK, 0 rows affected (0.19 sec)

MariaDB [CSD2204S18]> desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from c3;
Empty set (0.00 sec)

MariaDB [CSD2204S18]> insert into c3 select * from customer;
Query OK, 10 rows affected (0.05 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> select * from c3;\
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321002     |   32 |
| C02    | Bob Marley      | BM       | Toronto    | 321222     |   38 |
| C03    | Cherlies Theron | Cher     | New York   | 321562     |   25 |
| C04    | Denial Jack     | DJ       | Brazil     | 367562     |   27 |
| C05    | Donna Newman    | New      | Toronto    | 363462     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 323362     |   48 |
| C07    | Bobby Chacko    | chac     | New York   | 362062     |   29 |
| C08    | Ashko charles   | AK       | USA        | 364562     |   56 |
| C09    | Tony Special    | Specie   | USA        | 254562     |   62 |
| C10    | Jack sp         | Sparrow  | New Jersey | 252562     |   22 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> alter table c3 add column country varvhar(100);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'varvhar(100)' at line 1
MariaDB [CSD2204S18]> alter table c3 add column country varchar(100);
Query OK, 0 rows affected (0.36 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c3;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| custID     | varchar(5)   | NO   | PRI | NULL    |       |
| name       | varchar(50)  | YES  |     | NULL    |       |
| nickname   | varchar(10)  | YES  |     | NULL    |       |
| city       | varchar(20)  | YES  |     | NULL    |       |
| postalCode | varchar(10)  | YES  |     | NULL    |       |
| age        | int(3)       | YES  |     | NULL    |       |
| country    | varchar(100) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from c3;
+--------+-----------------+----------+------------+------------+------+---------+
| custID | name            | nickname | city       | postalCode | age  | country |
+--------+-----------------+----------+------------+------------+------+---------+
| C01    | Ashley          | Ash      | WDC        | 321002     |   32 | NULL    |
| C02    | Bob Marley      | BM       | Toronto    | 321222     |   38 | NULL    |
| C03    | Cherlies Theron | Cher     | New York   | 321562     |   25 | NULL    |
| C04    | Denial Jack     | DJ       | Brazil     | 367562     |   27 | NULL    |
| C05    | Donna Newman    | New      | Toronto    | 363462     |   50 | NULL    |
| C06    | Eston M.        | M.       | Toronto    | 323362     |   48 | NULL    |
| C07    | Bobby Chacko    | chac     | New York   | 362062     |   29 | NULL    |
| C08    | Ashko charles   | AK       | USA        | 364562     |   56 | NULL    |
| C09    | Tony Special    | Specie   | USA        | 254562     |   62 | NULL    |
| C10    | Jack sp         | Sparrow  | New Jersey | 252562     |   22 | NULL    |
+--------+-----------------+----------+------------+------------+------+---------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> alter table c3 modify column country varchar(40);
Query OK, 10 rows affected (0.59 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> alter table c3 change column custID customerID varchar(5);
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> alter table c3 drop column nickname;\
Query OK, 0 rows affected (0.55 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> alter table c3 drop column nickname;
ERROR 1091 (42000): Can't DROP 'nickname'; check that column/key exists
MariaDB [CSD2204S18]> desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> alter table c3 modify name varchar(50) not null;
Query OK, 10 rows affected (1.54 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | NO   |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> alter table c1 add primary key(custID);
Query OK, 0 rows affected (0.27 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> alter table c1 drop index custId;
ERROR 1091 (42000): Can't DROP 'custId'; check that column/key exists
MariaDB [CSD2204S18]> decs c1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'decs c1' at line 1
MariaDB [CSD2204S18]> desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> alter table c1 add primary key(custID);
ERROR 1068 (42000): Multiple primary key defined
MariaDB [CSD2204S18]> desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> alter table c1 drop index custId;
ERROR 1091 (42000): Can't DROP 'custId'; check that column/key exists
MariaDB [CSD2204S18]> alter table c1 add primary key (custID);
ERROR 1068 (42000): Multiple primary key defined
MariaDB [CSD2204S18]> desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.02 sec)

MariaDB [CSD2204S18]> alter table c1 drop index custId varchar(5);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'varchar(5)' at line 1
MariaDB [CSD2204S18]> alter table c1 drop index custId ;
ERROR 1091 (42000): Can't DROP 'custId'; check that column/key exists
MariaDB [CSD2204S18]> alter table c1 drop index custId;
ERROR 1091 (42000): Can't DROP 'custId'; check that column/key exists
MariaDB [CSD2204S18]> alter table c1 drop index custId;
ERROR 1091 (42000): Can't DROP 'custId'; check that column/key exists
MariaDB [CSD2204S18]> drop index custID on c1;
ERROR 1091 (42000): Can't DROP 'custID'; check that column/key exists
MariaDB [CSD2204S18]>  check version
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'version' at line 1
MariaDB [CSD2204S18]>  check version;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'version' at line 1
MariaDB [CSD2204S18]>  check 'version';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''version'' at line 1
MariaDB [CSD2204S18]> show variables like 'version';
+---------------+-----------------+
| Variable_name | Value           |
+---------------+-----------------+
| version       | 10.1.21-MariaDB |
+---------------+-----------------+
1 row in set (0.03 sec)

MariaDB [CSD2204S18]> alter table c1 drop primary key;
Query OK, 10 rows affected (0.88 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> desc person;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| ID        | int(3)       | NO   | PRI | NULL    |       |
| lastname  | varchar(255) | NO   | PRI | NULL    |       |
| firstname | varchar(255) | NO   |     | NULL    |       |
| age       | int(3)       | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> show index from person;
+--------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table  | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+--------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| person |          0 | PRIMARY  |            1 | ID          | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
| person |          0 | PRIMARY  |            2 | lastname    | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
+--------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> drop index PK_person on person;
ERROR 1091 (42000): Can't DROP 'PK_person'; check that column/key exists
MariaDB [CSD2204S18]> select * from c3;
+------------+-----------------+------------+------------+------+---------+
| customerID | name            | city       | postalCode | age  | country |
+------------+-----------------+------------+------------+------+---------+
| C01        | Ashley          | WDC        | 321002     |   32 | NULL    |
| C02        | Bob Marley      | Toronto    | 321222     |   38 | NULL    |
| C03        | Cherlies Theron | New York   | 321562     |   25 | NULL    |
| C04        | Denial Jack     | Brazil     | 367562     |   27 | NULL    |
| C05        | Donna Newman    | Toronto    | 363462     |   50 | NULL    |
| C06        | Eston M.        | Toronto    | 323362     |   48 | NULL    |
| C07        | Bobby Chacko    | New York   | 362062     |   29 | NULL    |
| C08        | Ashko charles   | USA        | 364562     |   56 | NULL    |
| C09        | Tony Special    | USA        | 254562     |   62 | NULL    |
| C10        | Jack sp         | New Jersey | 252562     |   22 | NULL    |
+------------+-----------------+------------+------------+------+---------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> uodate c3 set country ='USA'; 
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'uodate c3 set country ='USA'' at line 1
MariaDB [CSD2204S18]> update c3 set country ='USA'; 
Query OK, 10 rows affected (0.09 sec)
Rows matched: 10  Changed: 10  Warnings: 0

MariaDB [CSD2204S18]> select * from c3;
+------------+-----------------+------------+------------+------+---------+
| customerID | name            | city       | postalCode | age  | country |
+------------+-----------------+------------+------------+------+---------+
| C01        | Ashley          | WDC        | 321002     |   32 | USA     |
| C02        | Bob Marley      | Toronto    | 321222     |   38 | USA     |
| C03        | Cherlies Theron | New York   | 321562     |   25 | USA     |
| C04        | Denial Jack     | Brazil     | 367562     |   27 | USA     |
| C05        | Donna Newman    | Toronto    | 363462     |   50 | USA     |
| C06        | Eston M.        | Toronto    | 323362     |   48 | USA     |
| C07        | Bobby Chacko    | New York   | 362062     |   29 | USA     |
| C08        | Ashko charles   | USA        | 364562     |   56 | USA     |
| C09        | Tony Special    | USA        | 254562     |   62 | USA     |
| C10        | Jack sp         | New Jersey | 252562     |   22 | USA     |
+------------+-----------------+------------+------------+------+---------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> update c3 set country ='Canada' where city='Toronto';
Query OK, 3 rows affected (0.09 sec)
Rows matched: 3  Changed: 3  Warnings: 0

MariaDB [CSD2204S18]> select * from c3;
+------------+-----------------+------------+------------+------+---------+
| customerID | name            | city       | postalCode | age  | country |
+------------+-----------------+------------+------------+------+---------+
| C01        | Ashley          | WDC        | 321002     |   32 | USA     |
| C02        | Bob Marley      | Toronto    | 321222     |   38 | Canada  |
| C03        | Cherlies Theron | New York   | 321562     |   25 | USA     |
| C04        | Denial Jack     | Brazil     | 367562     |   27 | USA     |
| C05        | Donna Newman    | Toronto    | 363462     |   50 | Canada  |
| C06        | Eston M.        | Toronto    | 323362     |   48 | Canada  |
| C07        | Bobby Chacko    | New York   | 362062     |   29 | USA     |
| C08        | Ashko charles   | USA        | 364562     |   56 | USA     |
| C09        | Tony Special    | USA        | 254562     |   62 | USA     |
| C10        | Jack sp         | New Jersey | 252562     |   22 | USA     |
+------------+-----------------+------------+------------+------+---------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> update c3 set country ='South America' where city='Brazil';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> select * from c3;
+------------+-----------------+------------+------------+------+---------------+
| customerID | name            | city       | postalCode | age  | country       |
+------------+-----------------+------------+------------+------+---------------+
| C01        | Ashley          | WDC        | 321002     |   32 | USA           |
| C02        | Bob Marley      | Toronto    | 321222     |   38 | Canada        |
| C03        | Cherlies Theron | New York   | 321562     |   25 | USA           |
| C04        | Denial Jack     | Brazil     | 367562     |   27 | South America |
| C05        | Donna Newman    | Toronto    | 363462     |   50 | Canada        |
| C06        | Eston M.        | Toronto    | 323362     |   48 | Canada        |
| C07        | Bobby Chacko    | New York   | 362062     |   29 | USA           |
| C08        | Ashko charles   | USA        | 364562     |   56 | USA           |
| C09        | Tony Special    | USA        | 254562     |   62 | USA           |
| C10        | Jack sp         | New Jersey | 252562     |   22 | USA           |
+------------+-----------------+------------+------------+------+---------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from c2;
+--------------+------------+
| name         | postalCode |
+--------------+------------+
| Bob Marley   | 321222     |
| Donna Newman | 363462     |
| Eston M.     | 323362     |
+--------------+------------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> drop from c2 where name like 'Bob';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'from c2 where name like 'Bob'' at line 1
MariaDB [CSD2204S18]> delete from c2 where name like 'Bob%';
Query OK, 1 row affected (0.06 sec)

MariaDB [CSD2204S18]> select * from c2;
+--------------+------------+
| name         | postalCode |
+--------------+------------+
| Donna Newman | 363462     |
| Eston M.     | 323362     |
+--------------+------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> delete from c2;
Query OK, 2 rows affected (0.09 sec)

MariaDB [CSD2204S18]> select * from c2;
Empty set (0.00 sec)

MariaDB [CSD2204S18]> drop table c2;
Query OK, 0 rows affected (0.16 sec)

MariaDB [CSD2204S18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| c1                   |
| c3                   |
| customer             |
| orders               |
| person               |
+----------------------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> update c1 set custId where age >=50;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'where age >=50' at line 1
MariaDB [CSD2204S18]> update c1 set custId=1 where age >=50;
Query OK, 3 rows affected (0.05 sec)
Rows matched: 3  Changed: 3  Warnings: 0

MariaDB [CSD2204S18]> select * from c1;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321002     |   32 |
| C02    | Bob Marley      | BM       | Toronto    | 321222     |   38 |
| C03    | Cherlies Theron | Cher     | New York   | 321562     |   25 |
| C04    | Denial Jack     | DJ       | Brazil     | 367562     |   27 |
| 1      | Donna Newman    | New      | Toronto    | 363462     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 323362     |   48 |
| C07    | Bobby Chacko    | chac     | New York   | 362062     |   29 |
| 1      | Ashko charles   | AK       | USA        | 364562     |   56 |
| 1      | Tony Special    | Specie   | USA        | 254562     |   62 |
| C10    | Jack sp         | Sparrow  | New Jersey | 252562     |   22 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

