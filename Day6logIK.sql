MariaDB [(none)]> use database CSD2204S18
ERROR 1049 (42000): Unknown database 'database'
MariaDB [(none)]> use database CSD2204S18;
ERROR 1049 (42000): Unknown database 'database'
MariaDB [(none)]> use database CSD2204S18;
ERROR 1049 (42000): Unknown database 'database'
MariaDB [(none)]> use  CSD2204S18;
Database changed
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
5 rows in set (0.08 sec)

MariaDB [CSD2204S18]> select * from customer;
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
10 rows in set (0.04 sec)

MariaDB [CSD2204S18]> select city,count(city) 
    -> "no of customers" from customer where city like 'new%';
+----------+-----------------+
| city     | no of customers |
+----------+-----------------+
| New York |               3 |
+----------+-----------------+
1 row in set (0.01 sec)

MariaDB [CSD2204S18]> "no of customers" from customer where city;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '"no of customers" from customer where city' at line 1
MariaDB [CSD2204S18]> select count(city) "no of customer" from customer group by city;
+----------------+
| no of customer |
+----------------+
|              1 |
|              1 |
|              2 |
|              3 |
|              2 |
|              1 |
+----------------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select count(city) "no of customer" from customer group by city having city like  'new%' or city= 'toronto';
+----------------+
| no of customer |
+----------------+
|              1 |
|              2 |
|              3 |
+----------------+
3 rows in set (0.01 sec)

MariaDB [CSD2204S18]> select count(city) "no of customer" from customer group by city having count(city)>2;
+----------------+
| no of customer |
+----------------+
|              3 |
+----------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where name regexp '^D';
+--------+--------------+----------+---------+------------+------+
| custID | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| C04    | Denial Jack  | DJ       | Brazil  | 367562     |   27 |
| C05    | Donna Newman | New      | Toronto | 363462     |   50 |
+--------+--------------+----------+---------+------------+------+
2 rows in set (0.05 sec)

MariaDB [CSD2204S18]> select * from customer where name regexp 'n$';
+--------+-----------------+----------+----------+------------+------+
| custID | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | Cherlies Theron | Cher     | New York | 321562     |   25 |
| C05    | Donna Newman    | New      | Toronto  | 363462     |   50 |
+--------+-----------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where name regexp '^..a';
Empty set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where name regexp '^..e';
+--------+-----------------+----------+----------+------------+------+
| custID | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | Cherlies Theron | Cher     | New York | 321562     |   25 |
+--------+-----------------+----------+----------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where postalCode regexp'^[a-z]';
Empty set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where postalCode regexp'^[0-9]';
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

MariaDB [CSD2204S18]> select * from customer where name regexp 'a+';
+--------+---------------+----------+------------+------------+------+
| custID | name          | nickname | city       | postalCode | age  |
+--------+---------------+----------+------------+------------+------+
| C01    | Ashley        | Ash      | WDC        | 321002     |   32 |
| C02    | Bob Marley    | BM       | Toronto    | 321222     |   38 |
| C04    | Denial Jack   | DJ       | Brazil     | 367562     |   27 |
| C05    | Donna Newman  | New      | Toronto    | 363462     |   50 |
| C07    | Bobby Chacko  | chac     | New York   | 362062     |   29 |
| C08    | Ashko charles | AK       | USA        | 364562     |   56 |
| C09    | Tony Special  | Specie   | USA        | 254562     |   62 |
| C10    | Jack sp       | Sparrow  | New Jersey | 252562     |   22 |
+--------+---------------+----------+------------+------------+------+
8 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where nickname regexp 'a+';
+--------+---------------+----------+------------+------------+------+
| custID | name          | nickname | city       | postalCode | age  |
+--------+---------------+----------+------------+------------+------+
| C01    | Ashley        | Ash      | WDC        | 321002     |   32 |
| C07    | Bobby Chacko  | chac     | New York   | 362062     |   29 |
| C08    | Ashko charles | AK       | USA        | 364562     |   56 |
| C10    | Jack sp       | Sparrow  | New Jersey | 252562     |   22 |
+--------+---------------+----------+------------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where nickname regexp '^a+';
+--------+---------------+----------+------+------------+------+
| custID | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| C01    | Ashley        | Ash      | WDC  | 321002     |   32 |
| C08    | Ashko charles | AK       | USA  | 364562     |   56 |
+--------+---------------+----------+------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from customer where nickname regexp '^a?';
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

MariaDB [CSD2204S18]> select * from customer where city regexp '^.{4}';
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C02    | Bob Marley      | BM       | Toronto    | 321222     |   38 |
| C03    | Cherlies Theron | Cher     | New York   | 321562     |   25 |
| C04    | Denial Jack     | DJ       | Brazil     | 367562     |   27 |
| C05    | Donna Newman    | New      | Toronto    | 363462     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 323362     |   48 |
| C07    | Bobby Chacko    | chac     | New York   | 362062     |   29 |
| C10    | Jack sp         | Sparrow  | New Jersey | 252562     |   22 |
+--------+-----------------+----------+------------+------------+------+
7 rows in set (0.02 sec)

MariaDB [CSD2204S18]> select * from customer where city regexp '^.{4}';
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C02    | Bob Marley      | BM       | Toronto    | 321222     |   38 |
| C03    | Cherlies Theron | Cher     | New York   | 321562     |   25 |
| C04    | Denial Jack     | DJ       | Brazil     | 367562     |   27 |
| C05    | Donna Newman    | New      | Toronto    | 363462     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 323362     |   48 |
| C07    | Bobby Chacko    | chac     | New York   | 362062     |   29 |
| C10    | Jack sp         | Sparrow  | New Jersey | 252562     |   22 |
+--------+-----------------+----------+------------+------------+------+
7 rows in set (0.02 sec)

MariaDB [CSD2204S18]> select * from customer where city rlike '^.{4}';
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C02    | Bob Marley      | BM       | Toronto    | 321222     |   38 |
| C03    | Cherlies Theron | Cher     | New York   | 321562     |   25 |
| C04    | Denial Jack     | DJ       | Brazil     | 367562     |   27 |
| C05    | Donna Newman    | New      | Toronto    | 363462     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 323362     |   48 |
| C07    | Bobby Chacko    | chac     | New York   | 362062     |   29 |
| C10    | Jack sp         | Sparrow  | New Jersey | 252562     |   22 |
+--------+-----------------+----------+------------+------------+------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select now();
+---------------------+
| now()               |
+---------------------+
| 2018-05-14 09:15:17 |
+---------------------+
1 row in set (0.02 sec)

MariaDB [CSD2204S18]> alter table cutsomer add column DOB date;
ERROR 1146 (42S02): Table 'csd2204s18.cutsomer' doesn't exist
MariaDB [CSD2204S18]> alter table customer add column DOB date;
Query OK, 0 rows affected (0.41 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> select * from customer;
+--------+-----------------+----------+------------+------------+------+------+
| custID | name            | nickname | city       | postalCode | age  | DOB  |
+--------+-----------------+----------+------------+------------+------+------+
| C01    | Ashley          | Ash      | WDC        | 321002     |   32 | NULL |
| C02    | Bob Marley      | BM       | Toronto    | 321222     |   38 | NULL |
| C03    | Cherlies Theron | Cher     | New York   | 321562     |   25 | NULL |
| C04    | Denial Jack     | DJ       | Brazil     | 367562     |   27 | NULL |
| C05    | Donna Newman    | New      | Toronto    | 363462     |   50 | NULL |
| C06    | Eston M.        | M.       | Toronto    | 323362     |   48 | NULL |
| C07    | Bobby Chacko    | chac     | New York   | 362062     |   29 | NULL |
| C08    | Ashko charles   | AK       | USA        | 364562     |   56 | NULL |
| C09    | Tony Special    | Specie   | USA        | 254562     |   62 | NULL |
| C10    | Jack sp         | Sparrow  | New Jersey | 252562     |   22 | NULL |
+--------+-----------------+----------+------------+------------+------+------+
10 rows in set (0.00 sec)

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
| DOB        | date        | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> update customer set DOB ='1991-01-15' where custID='c01';
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> update customer set DOB ='1996-04-15' where custID='c02';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> update customer set DOB ='1994-05-09' where custID='c03';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> update customer set DOB ='1995-11-03' where custID='c04';
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> update customer set DOB ='1995-01-16' where custID='c05';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> update customer set DOB ='1995-10-22' where custID='c06';
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> update customer set DOB ='1992-11-07' where custID='c07';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> update customer set DOB ='1996-05-07' where custID='c08';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> update customer set DOB ='1985-08-28' where custID='c09';
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> update customer set DOB ='1995-07-17' where custID='c10';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> select * from customer;
+--------+-----------------+----------+------------+------------+------+------------+
| custID | name            | nickname | city       | postalCode | age  | DOB        |
+--------+-----------------+----------+------------+------------+------+------------+
| C01    | Ashley          | Ash      | WDC        | 321002     |   32 | 1991-01-15 |
| C02    | Bob Marley      | BM       | Toronto    | 321222     |   38 | 1996-04-15 |
| C03    | Cherlies Theron | Cher     | New York   | 321562     |   25 | 1994-05-09 |
| C04    | Denial Jack     | DJ       | Brazil     | 367562     |   27 | 1995-11-03 |
| C05    | Donna Newman    | New      | Toronto    | 363462     |   50 | 1995-01-16 |
| C06    | Eston M.        | M.       | Toronto    | 323362     |   48 | 1995-10-22 |
| C07    | Bobby Chacko    | chac     | New York   | 362062     |   29 | 1992-11-07 |
| C08    | Ashko charles   | AK       | USA        | 364562     |   56 | 1996-05-07 |
| C09    | Tony Special    | Specie   | USA        | 254562     |   62 | 1985-08-28 |
| C10    | Jack sp         | Sparrow  | New Jersey | 252562     |   22 | 1995-07-17 |
+--------+-----------------+----------+------------+------------+------+------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select name, DOB, timestampdiff(year,DOB, curdate())"age" from customer;
+-----------------+------------+------+
| name            | DOB        | age  |
+-----------------+------------+------+
| Ashley          | 1991-01-15 |   27 |
| Bob Marley      | 1996-04-15 |   22 |
| Cherlies Theron | 1994-05-09 |   24 |
| Denial Jack     | 1995-11-03 |   22 |
| Donna Newman    | 1995-01-16 |   23 |
| Eston M.        | 1995-10-22 |   22 |
| Bobby Chacko    | 1992-11-07 |   25 |
| Ashko charles   | 1996-05-07 |   22 |
| Tony Special    | 1985-08-28 |   32 |
| Jack sp         | 1995-07-17 |   22 |
+-----------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select name, DOB, timestampdiff(day ,DOB, curdate())"age" from customer;
+-----------------+------------+-------+
| name            | DOB        | age   |
+-----------------+------------+-------+
| Ashley          | 1991-01-15 |  9981 |
| Bob Marley      | 1996-04-15 |  8064 |
| Cherlies Theron | 1994-05-09 |  8771 |
| Denial Jack     | 1995-11-03 |  8228 |
| Donna Newman    | 1995-01-16 |  8519 |
| Eston M.        | 1995-10-22 |  8240 |
| Bobby Chacko    | 1992-11-07 |  9319 |
| Ashko charles   | 1996-05-07 |  8042 |
| Tony Special    | 1985-08-28 | 11947 |
| Jack sp         | 1995-07-17 |  8337 |
+-----------------+------------+-------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select name, DOB, timestampdiff(year,DOB, curdate())"age" from customer;
+-----------------+------------+------+
| name            | DOB        | age  |
+-----------------+------------+------+
| Ashley          | 1991-01-15 |   27 |
| Bob Marley      | 1996-04-15 |   22 |
| Cherlies Theron | 1994-05-09 |   24 |
| Denial Jack     | 1995-11-03 |   22 |
| Donna Newman    | 1995-01-16 |   23 |
| Eston M.        | 1995-10-22 |   22 |
| Bobby Chacko    | 1992-11-07 |   25 |
| Ashko charles   | 1996-05-07 |   22 |
| Tony Special    | 1985-08-28 |   32 |
| Jack sp         | 1995-07-17 |   22 |
+-----------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select name, DOB, timestampdiff(year,DOB, curdate())"age" from customer having age =22;
+---------------+------------+------+
| name          | DOB        | age  |
+---------------+------------+------+
| Bob Marley    | 1996-04-15 |   22 |
| Denial Jack   | 1995-11-03 |   22 |
| Eston M.      | 1995-10-22 |   22 |
| Ashko charles | 1996-05-07 |   22 |
| Jack sp       | 1995-07-17 |   22 |
+---------------+------------+------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select name, DOB, timestampdiff(year,DOB, curdate())"age" from customer where age =22;
+---------+------------+------+
| name    | DOB        | age  |
+---------+------------+------+
| Jack sp | 1995-07-17 |   22 |
+---------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select name, DOB, timestampdiff(year,DOB, curdate())"age" from customer where timestampdiff(year,DOB, curdate()) =22;
+---------------+------------+------+
| name          | DOB        | age  |
+---------------+------------+------+
| Bob Marley    | 1996-04-15 |   22 |
| Denial Jack   | 1995-11-03 |   22 |
| Eston M.      | 1995-10-22 |   22 |
| Ashko charles | 1996-05-07 |   22 |
| Jack sp       | 1995-07-17 |   22 |
+---------------+------------+------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> create table DEPT (
    -> dno INT,
    -> name VARCHAR(50),
    -> loc VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.16 sec)

MariaDB [CSD2204S18]> insert into DEPT (dno, name, loc) values (1, 'Aibox', '11768 Kenwood Alley');
Query OK, 1 row affected (0.01 sec)

MariaDB [CSD2204S18]> insert into DEPT (dno, name, loc) values (2, 'Leexo', '05312 Jay Court');
Query OK, 1 row affected (0.05 sec)

MariaDB [CSD2204S18]> insert into DEPT (dno, name, loc) values (3, 'Nlounge', '72648 Oak Valley Center');
Query OK, 1 row affected (0.08 sec)

MariaDB [CSD2204S18]> insert into DEPT (dno, name, loc) values (4, 'Topicware', '525 Walton Park');
Query OK, 1 row affected (0.02 sec)

MariaDB [CSD2204S18]> insert into DEPT (dno, name, loc) values (5, 'Skaboo', '21 David Drive');
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204S18]> insert into DEPT (dno, name, loc) values (6, 'Agivu', '30499 Eagan Plaza');
Query OK, 1 row affected (0.02 sec)

MariaDB [CSD2204S18]> insert into DEPT (dno, name, loc) values (7, 'Innojam', '86141 Muir Terrace');
Query OK, 1 row affected (0.02 sec)

MariaDB [CSD2204S18]> insert into DEPT (dno, name, loc) values (8, 'Skajo', '5950 American Avenue');
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204S18]> insert into DEPT (dno, name, loc) values (9, 'Fivechat', '098 Hintze Circle');
Query OK, 1 row affected (0.02 sec)

MariaDB [CSD2204S18]> insert into DEPT (dno, name, loc) values (10, 'Yodel', '94915 Knutson Pass');
Query OK, 1 row affected (0.01 sec)

MariaDB [CSD2204S18]> insert into DEPT (dno, name, loc) values (11, 'Kazu', '22 Hauk Crossing');
Query OK, 1 row affected (0.02 sec)

MariaDB [CSD2204S18]> insert into DEPT (dno, name, loc) values (12, 'Oyoyo', '853 Chinook Place');
Query OK, 1 row affected (0.02 sec)

MariaDB [CSD2204S18]> insert into DEPT (dno, name, loc) values (13, 'Vidoo', '060 Ilene Center');
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204S18]> insert into DEPT (dno, name, loc) values (14, 'Meejo', '2754 Sachs Plaza');
Query OK, 1 row affected (0.01 sec)

MariaDB [CSD2204S18]> insert into DEPT (dno, name, loc) values (15, 'Muxo', '7329 Pleasure Crossing');
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204S18]> select * from DEPT;
+------+-----------+-------------------------+
| dno  | name      | loc                     |
+------+-----------+-------------------------+
|    1 | Aibox     | 11768 Kenwood Alley     |
|    2 | Leexo     | 05312 Jay Court         |
|    3 | Nlounge   | 72648 Oak Valley Center |
|    4 | Topicware | 525 Walton Park         |
|    5 | Skaboo    | 21 David Drive          |
|    6 | Agivu     | 30499 Eagan Plaza       |
|    7 | Innojam   | 86141 Muir Terrace      |
|    8 | Skajo     | 5950 American Avenue    |
|    9 | Fivechat  | 098 Hintze Circle       |
|   10 | Yodel     | 94915 Knutson Pass      |
|   11 | Kazu      | 22 Hauk Crossing        |
|   12 | Oyoyo     | 853 Chinook Place       |
|   13 | Vidoo     | 060 Ilene Center        |
|   14 | Meejo     | 2754 Sachs Plaza        |
|   15 | Muxo      | 7329 Pleasure Crossing  |
+------+-----------+-------------------------+
15 rows in set (0.00 sec)

