MariaDB [(none)]> USE CDS2204S18;
ERROR 1049 (42000): Unknown database 'cds2204s18'
MariaDB [(none)]> USE CSD2204S18;
Database changed
MariaDB [CSD2204S18]> DESC Customer;
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
6 rows in set (0.11 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C01','Ashley','Ash','WDC','321002',32);
Query OK, 1 row affected (0.16 sec)

MariaDB [CSD2204S18]> select * from Customer;
+--------+--------+----------+------+------------+------+
| custID | name   | nickname | city | postalCode | age  |
+--------+--------+----------+------+------------+------+
| C01    | Ashley | Ash      | WDC  | 321002     |   32 |
+--------+--------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C02','Bob Marley','BM','Toronto','321222',38);
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C03','Cherlies Theron','Cher','New York','321562',25);
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C04','Denial Jack','DJ','Brazil','367562',27);
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204S18]> select * from Customer;
+--------+-----------------+----------+----------+------------+------+
| custID | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C01    | Ashley          | Ash      | WDC      | 321002     |   32 |
| C02    | Bob Marley      | BM       | Toronto  | 321222     |   38 |
| C03    | Cherlies Theron | Cher     | New York | 321562     |   25 |
| C04    | Denial Jack     | DJ       | Brazil   | 367562     |   27 |
+--------+-----------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C05','Donna Newman','New','Toronto','363462',50);
Query OK, 1 row affected (0.05 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C06','Eston M.','M.','Toronto','323362',48);
Query OK, 1 row affected (0.02 sec)

MariaDB [CSD2204S18]> select * from Customer;
+--------+-----------------+----------+----------+------------+------+
| custID | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C01    | Ashley          | Ash      | WDC      | 321002     |   32 |
| C02    | Bob Marley      | BM       | Toronto  | 321222     |   38 |
| C03    | Cherlies Theron | Cher     | New York | 321562     |   25 |
| C04    | Denial Jack     | DJ       | Brazil   | 367562     |   27 |
| C05    | Donna Newman    | New      | Toronto  | 363462     |   50 |
| C06    | Eston M.        | M.       | Toronto  | 323362     |   48 |
+--------+-----------------+----------+----------+------------+------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C07','Bobby Chacko','chac','New York','362062',29);
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C08','Ashko charles','AK','USA','364562',56);
Query OK, 1 row affected (0.02 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C09','Tony Special','Specie','USA','254562',62);
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C10','Jack sp','Sparrow','New Jersey','252562',22);
Query OK, 1 row affected (0.03 sec)

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
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> cls;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'cls' at line 1
MariaDB [CSD2204S18]> cls
    -> select * from Customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'cls
select * from Customer' at line 1
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
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> CLS
    -> select * from Customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'CLS
select * from Customer' at line 1
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
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select name,nickname from Customer;
+-----------------+----------+
| name            | nickname |
+-----------------+----------+
| Ashley          | Ash      |
| Bob Marley      | BM       |
| Cherlies Theron | Cher     |
| Denial Jack     | DJ       |
| Donna Newman    | New      |
| Eston M.        | M.       |
| Bobby Chacko    | chac     |
| Ashko charles   | AK       |
| Tony Special    | Specie   |
| Jack sp         | Sparrow  |
+-----------------+----------+
10 rows in set (0.01 sec)

MariaDB [CSD2204S18]> select city,postalCode from Customer;
+------------+------------+
| city       | postalCode |
+------------+------------+
| WDC        | 321002     |
| Toronto    | 321222     |
| New York   | 321562     |
| Brazil     | 367562     |
| Toronto    | 363462     |
| Toronto    | 323362     |
| New York   | 362062     |
| USA        | 364562     |
| USA        | 254562     |
| New Jersey | 252562     |
+------------+------------+
10 rows in set (0.00 sec)

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
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer where name='Ashley';
+--------+--------+----------+------+------------+------+
| custID | name   | nickname | city | postalCode | age  |
+--------+--------+----------+------+------------+------+
| C01    | Ashley | Ash      | WDC  | 321002     |   32 |
+--------+--------+----------+------+------------+------+
1 row in set (0.06 sec)

MariaDB [CSD2204S18]> select * from Customer where nickname='AK';
+--------+---------------+----------+------+------------+------+
| custID | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| C08    | Ashko charles | AK       | USA  | 364562     |   56 |
+--------+---------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select name,city from Customer where name='Eston M.';
+----------+---------+
| name     | city    |
+----------+---------+
| Eston M. | Toronto |
+----------+---------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select name,city from Customer where city='toronto';
+--------------+---------+
| name         | city    |
+--------------+---------+
| Bob Marley   | Toronto |
| Donna Newman | Toronto |
| Eston M.     | Toronto |
+--------------+---------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select name,city from Customer where city!='toronto';
+-----------------+------------+
| name            | city       |
+-----------------+------------+
| Ashley          | WDC        |
| Cherlies Theron | New York   |
| Denial Jack     | Brazil     |
| Bobby Chacko    | New York   |
| Ashko charles   | USA        |
| Tony Special    | USA        |
| Jack sp         | New Jersey |
+-----------------+------------+
7 rows in set (0.02 sec)

MariaDB [CSD2204S18]> select name,city from Customer where city<>'toronto';
+-----------------+------------+
| name            | city       |
+-----------------+------------+
| Ashley          | WDC        |
| Cherlies Theron | New York   |
| Denial Jack     | Brazil     |
| Bobby Chacko    | New York   |
| Ashko charles   | USA        |
| Tony Special    | USA        |
| Jack sp         | New Jersey |
+-----------------+------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select name,city from Customer where age= 50;
+--------------+---------+
| name         | city    |
+--------------+---------+
| Donna Newman | Toronto |
+--------------+---------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select name,city from Customer where age< 50;
+-----------------+------------+
| name            | city       |
+-----------------+------------+
| Ashley          | WDC        |
| Bob Marley      | Toronto    |
| Cherlies Theron | New York   |
| Denial Jack     | Brazil     |
| Eston M.        | Toronto    |
| Bobby Chacko    | New York   |
| Jack sp         | New Jersey |
+-----------------+------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select name,city from Customer where age. 50;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '50' at line 1
MariaDB [CSD2204S18]> select name,city from Customer where age. 50;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '50' at line 1
MariaDB [CSD2204S18]> select name,city from Customer where age> 50;
+---------------+------+
| name          | city |
+---------------+------+
| Ashko charles | USA  |
| Tony Special  | USA  |
+---------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select  from Customer where age> 50;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'from Customer where age> 50' at line 1
MariaDB [CSD2204S18]> select * from Customer where age> 50;
+--------+---------------+----------+------+------------+------+
| custID | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| C08    | Ashko charles | AK       | USA  | 364562     |   56 |
| C09    | Tony Special  | Specie   | USA  | 254562     |   62 |
+--------+---------------+----------+------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer where name> 'Ashley';
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C02    | Bob Marley      | BM       | Toronto    | 321222     |   38 |
| C03    | Cherlies Theron | Cher     | New York   | 321562     |   25 |
| C04    | Denial Jack     | DJ       | Brazil     | 367562     |   27 |
| C05    | Donna Newman    | New      | Toronto    | 363462     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 323362     |   48 |
| C07    | Bobby Chacko    | chac     | New York   | 362062     |   29 |
| C09    | Tony Special    | Specie   | USA        | 254562     |   62 |
| C10    | Jack sp         | Sparrow  | New Jersey | 252562     |   22 |
+--------+-----------------+----------+------------+------------+------+
8 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer where name> 'Donna';
+--------+--------------+----------+------------+------------+------+
| custID | name         | nickname | city       | postalCode | age  |
+--------+--------------+----------+------------+------------+------+
| C05    | Donna Newman | New      | Toronto    | 363462     |   50 |
| C06    | Eston M.     | M.       | Toronto    | 323362     |   48 |
| C09    | Tony Special | Specie   | USA        | 254562     |   62 |
| C10    | Jack sp      | Sparrow  | New Jersey | 252562     |   22 |
+--------+--------------+----------+------------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer where name< 'Donna';
+--------+-----------------+----------+----------+------------+------+
| custID | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C01    | Ashley          | Ash      | WDC      | 321002     |   32 |
| C02    | Bob Marley      | BM       | Toronto  | 321222     |   38 |
| C03    | Cherlies Theron | Cher     | New York | 321562     |   25 |
| C04    | Denial Jack     | DJ       | Brazil   | 367562     |   27 |
| C07    | Bobby Chacko    | chac     | New York | 362062     |   29 |
| C08    | Ashko charles   | AK       | USA      | 364562     |   56 |
+--------+-----------------+----------+----------+------------+------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer where name >'Donna';
+--------+--------------+----------+------------+------------+------+
| custID | name         | nickname | city       | postalCode | age  |
+--------+--------------+----------+------------+------------+------+
| C05    | Donna Newman | New      | Toronto    | 363462     |   50 |
| C06    | Eston M.     | M.       | Toronto    | 323362     |   48 |
| C09    | Tony Special | Specie   | USA        | 254562     |   62 |
| C10    | Jack sp      | Sparrow  | New Jersey | 252562     |   22 |
+--------+--------------+----------+------------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer where name > 'Donna';
+--------+--------------+----------+------------+------------+------+
| custID | name         | nickname | city       | postalCode | age  |
+--------+--------------+----------+------------+------------+------+
| C05    | Donna Newman | New      | Toronto    | 363462     |   50 |
| C06    | Eston M.     | M.       | Toronto    | 323362     |   48 |
| C09    | Tony Special | Specie   | USA        | 254562     |   62 |
| C10    | Jack sp      | Sparrow  | New Jersey | 252562     |   22 |
+--------+--------------+----------+------------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select name,city from Customer where name = 'Ashley', city ='Toronto';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ' city ='Toronto'' at line 1
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
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select name,city from Customer where name = 'Ashley' or city ='Toronto';
+--------------+---------+
| name         | city    |
+--------------+---------+
| Ashley       | WDC     |
| Bob Marley   | Toronto |
| Donna Newman | Toronto |
| Eston M.     | Toronto |
+--------------+---------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select name,city from Customer where name = 'Ashley' || city ='Toronto';
+--------------+---------+
| name         | city    |
+--------------+---------+
| Ashley       | WDC     |
| Bob Marley   | Toronto |
| Donna Newman | Toronto |
| Eston M.     | Toronto |
+--------------+---------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select name,city from Customer where city = 'New York' || city ='Toronto';
+-----------------+----------+
| name            | city     |
+-----------------+----------+
| Bob Marley      | Toronto  |
| Cherlies Theron | New York |
| Donna Newman    | Toronto  |
| Eston M.        | Toronto  |
| Bobby Chacko    | New York |
+-----------------+----------+
5 rows in set (0.00 sec)

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
10 rows in set (0.00 sec)

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
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select name,age from Customer where city = 'Toronto' & age >50;
Empty set, 20 warnings (0.02 sec)

MariaDB [CSD2204S18]> select name,age from Customer where city = 'Toronto' and age >50;
Empty set (0.00 sec)

MariaDB [CSD2204S18]> select name,age from Customer where city = 'Toronto' AND age >50;
Empty set (0.00 sec)

MariaDB [CSD2204S18]> select name,age from Customer where city = 'Toronto' AND age >25;
+--------------+------+
| name         | age  |
+--------------+------+
| Bob Marley   |   38 |
| Donna Newman |   50 |
| Eston M.     |   48 |
+--------------+------+
3 rows in set (0.00 sec)

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
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer where city='toronto':
    -> select * from Customer where city='Toronto':
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ':
select * from Customer where city='Toronto':' at line 1
MariaDB [CSD2204S18]> select * from Customer where city='Toronto':
    -> select * from Customer where city='Toronto';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ':
select * from Customer where city='Toronto'' at line 1
MariaDB [CSD2204S18]> select * from Customer where city='Toronto';
+--------+--------------+----------+---------+------------+------+
| custID | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| C02    | Bob Marley   | BM       | Toronto | 321222     |   38 |
| C05    | Donna Newman | New      | Toronto | 363462     |   50 |
| C06    | Eston M.     | M.       | Toronto | 323362     |   48 |
+--------+--------------+----------+---------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select count(*) from Customer where city='Toronto';
+----------+
| count(*) |
+----------+
|        3 |
+----------+
1 row in set (0.05 sec)

MariaDB [CSD2204S18]> select count(*) "no. of customer in Toronto" from Customer where city='Toronto';
+----------------------------+
| no. of customer in Toronto |
+----------------------------+
|                          3 |
+----------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select count(*) "No. of customer in Toronto" from Customer where city='Toronto';
+----------------------------+
| No. of customer in Toronto |
+----------------------------+
|                          3 |
+----------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select count(*) "no. of customer in Toronto" from Customer where city='Toronto';
+----------------------------+
| no. of customer in Toronto |
+----------------------------+
|                          3 |
+----------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select count(*) "No. of customer in Toronto" from Customer where city='Toronto';
+----------------------------+
| No. of customer in Toronto |
+----------------------------+
|                          3 |
+----------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select count(*) "No. of customer age more than 50" from Customer where age > 30;
+----------------------------------+
| No. of customer age more than 50 |
+----------------------------------+
|                                6 |
+----------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select count(*) "No. of customer age more than 300" from Customer where age > 30;
+-----------------------------------+
| No. of customer age more than 300 |
+-----------------------------------+
|                                 6 |
+-----------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select count(*) "No. of customer age more than 30" from Customer where age > 30;
+----------------------------------+
| No. of customer age more than 30 |
+----------------------------------+
|                                6 |
+----------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select count(*) "No. of customer age more than 30" from Customer where age > 500;
+----------------------------------+
| No. of customer age more than 30 |
+----------------------------------+
|                                0 |
+----------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select count(*) "No. of customer age more than 30" from Customer where age > 50;
+----------------------------------+
| No. of customer age more than 30 |
+----------------------------------+
|                                2 |
+----------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select count(*) "No. of customer age more than 50" from Customer where age > 50;
+----------------------------------+
| No. of customer age more than 50 |
+----------------------------------+
|                                2 |
+----------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer where age >30 AND age<70;:
+--------+---------------+----------+---------+------------+------+
| custID | name          | nickname | city    | postalCode | age  |
+--------+---------------+----------+---------+------------+------+
| C01    | Ashley        | Ash      | WDC     | 321002     |   32 |
| C02    | Bob Marley    | BM       | Toronto | 321222     |   38 |
| C05    | Donna Newman  | New      | Toronto | 363462     |   50 |
| C06    | Eston M.      | M.       | Toronto | 323362     |   48 |
| C08    | Ashko charles | AK       | USA     | 364562     |   56 |
| C09    | Tony Special  | Specie   | USA     | 254562     |   62 |
+--------+---------------+----------+---------+------------+------+
6 rows in set (0.00 sec)

    -> select * from Customer where age BETWEEN 30 AND 70;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ':
select * from Customer where age BETWEEN 30 AND 70' at line 1
MariaDB [CSD2204S18]> select * from Customer where age BETWEEN 30 AND 70;
+--------+---------------+----------+---------+------------+------+
| custID | name          | nickname | city    | postalCode | age  |
+--------+---------------+----------+---------+------------+------+
| C01    | Ashley        | Ash      | WDC     | 321002     |   32 |
| C02    | Bob Marley    | BM       | Toronto | 321222     |   38 |
| C05    | Donna Newman  | New      | Toronto | 363462     |   50 |
| C06    | Eston M.      | M.       | Toronto | 323362     |   48 |
| C08    | Ashko charles | AK       | USA     | 364562     |   56 |
| C09    | Tony Special  | Specie   | USA     | 254562     |   62 |
+--------+---------------+----------+---------+------------+------+
6 rows in set (0.03 sec)

MariaDB [CSD2204S18]> select * from Customer where age NOT BETWEEN 30 AND 70;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C03    | Cherlies Theron | Cher     | New York   | 321562     |   25 |
| C04    | Denial Jack     | DJ       | Brazil     | 367562     |   27 |
| C07    | Bobby Chacko    | chac     | New York   | 362062     |   29 |
| C10    | Jack sp         | Sparrow  | New Jersey | 252562     |   22 |
+--------+-----------------+----------+------------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer where NOT age  BETWEEN 30 AND 70;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C03    | Cherlies Theron | Cher     | New York   | 321562     |   25 |
| C04    | Denial Jack     | DJ       | Brazil     | 367562     |   27 |
| C07    | Bobby Chacko    | chac     | New York   | 362062     |   29 |
| C10    | Jack sp         | Sparrow  | New Jersey | 252562     |   22 |
+--------+-----------------+----------+------------+------------+------+
4 rows in set (0.00 sec)

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
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select name,MAX(age) from Customer;
+--------+----------+
| name   | MAX(age) |
+--------+----------+
| Ashley |       62 |
+--------+----------+
1 row in set (0.06 sec)

MariaDB [CSD2204S18]> select MAX(age) from Customer;
+----------+
| MAX(age) |
+----------+
|       62 |
+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select name from Customer age =72;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '=72' at line 1
MariaDB [CSD2204S18]> select name from Customer where age =72;
Empty set (0.00 sec)

MariaDB [CSD2204S18]> select name from Customer where age =62;
+--------------+
| name         |
+--------------+
| Tony Special |
+--------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select name from Customer where age =MAX(age);
ERROR 1111 (HY000): Invalid use of group function
MariaDB [CSD2204S18]> select MAX(age) from Customer;
+----------+
| MAX(age) |
+----------+
|       62 |
+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select min(age) from Customer;
+----------+
| min(age) |
+----------+
|       22 |
+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select avg(age) from Customer;
+----------+
| avg(age) |
+----------+
|  38.9000 |
+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer where name like 'B%';
+--------+--------------+----------+----------+------------+------+
| custID | name         | nickname | city     | postalCode | age  |
+--------+--------------+----------+----------+------------+------+
| C02    | Bob Marley   | BM       | Toronto  | 321222     |   38 |
| C07    | Bobby Chacko | chac     | New York | 362062     |   29 |
+--------+--------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

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
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer where name notlike 'B%';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'notlike 'B%'' at line 1
MariaDB [CSD2204S18]> 
MariaDB [CSD2204S18]> select * from Customer where name not like 'B%';
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321002     |   32 |
| C03    | Cherlies Theron | Cher     | New York   | 321562     |   25 |
| C04    | Denial Jack     | DJ       | Brazil     | 367562     |   27 |
| C05    | Donna Newman    | New      | Toronto    | 363462     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 323362     |   48 |
| C08    | Ashko charles   | AK       | USA        | 364562     |   56 |
| C09    | Tony Special    | Specie   | USA        | 254562     |   62 |
| C10    | Jack sp         | Sparrow  | New Jersey | 252562     |   22 |
+--------+-----------------+----------+------------+------------+------+
8 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer where name not like '%n';
+--------+---------------+----------+------------+------------+------+
| custID | name          | nickname | city       | postalCode | age  |
+--------+---------------+----------+------------+------------+------+
| C01    | Ashley        | Ash      | WDC        | 321002     |   32 |
| C02    | Bob Marley    | BM       | Toronto    | 321222     |   38 |
| C04    | Denial Jack   | DJ       | Brazil     | 367562     |   27 |
| C06    | Eston M.      | M.       | Toronto    | 323362     |   48 |
| C07    | Bobby Chacko  | chac     | New York   | 362062     |   29 |
| C08    | Ashko charles | AK       | USA        | 364562     |   56 |
| C09    | Tony Special  | Specie   | USA        | 254562     |   62 |
| C10    | Jack sp       | Sparrow  | New Jersey | 252562     |   22 |
+--------+---------------+----------+------------+------------+------+
8 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer where name like '%n';
+--------+-----------------+----------+----------+------------+------+
| custID | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | Cherlies Theron | Cher     | New York | 321562     |   25 |
| C05    | Donna Newman    | New      | Toronto  | 363462     |   50 |
+--------+-----------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer where city like'new%' ;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C03    | Cherlies Theron | Cher     | New York   | 321562     |   25 |
| C07    | Bobby Chacko    | chac     | New York   | 362062     |   29 |
| C10    | Jack sp         | Sparrow  | New Jersey | 252562     |   22 |
+--------+-----------------+----------+------------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer name='__n' ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '='__n'' at line 1
MariaDB [CSD2204S18]> select * from Customer name='__n%' ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '='__n%'' at line 1
MariaDB [CSD2204S18]> select * from Customer name='__n%';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '='__n%'' at line 1
MariaDB [CSD2204S18]> select * from Customer name='_ _ n%';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '='_ _ n%'' at line 1
MariaDB [CSD2204S18]> 
MariaDB [CSD2204S18]> select * from Customer where name like '__n%';
+--------+--------------+----------+---------+------------+------+
| custID | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| C04    | Denial Jack  | DJ       | Brazil  | 367562     |   27 |
| C05    | Donna Newman | New      | Toronto | 363462     |   50 |
| C09    | Tony Special | Specie   | USA     | 254562     |   62 |
+--------+--------------+----------+---------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer where name like '__n_a%';
+--------+--------------+----------+---------+------------+------+
| custID | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| C04    | Denial Jack  | DJ       | Brazil  | 367562     |   27 |
| C05    | Donna Newman | New      | Toronto | 363462     |   50 |
+--------+--------------+----------+---------+------------+------+
2 rows in set (0.00 sec)

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
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer limit 4;
+--------+-----------------+----------+----------+------------+------+
| custID | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C01    | Ashley          | Ash      | WDC      | 321002     |   32 |
| C02    | Bob Marley      | BM       | Toronto  | 321222     |   38 |
| C03    | Cherlies Theron | Cher     | New York | 321562     |   25 |
| C04    | Denial Jack     | DJ       | Brazil   | 367562     |   27 |
+--------+-----------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer limit 2;
+--------+------------+----------+---------+------------+------+
| custID | name       | nickname | city    | postalCode | age  |
+--------+------------+----------+---------+------------+------+
| C01    | Ashley     | Ash      | WDC     | 321002     |   32 |
| C02    | Bob Marley | BM       | Toronto | 321222     |   38 |
+--------+------------+----------+---------+------------+------+
2 rows in set (0.00 sec)

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
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer where age in(22,27,50,62);
+--------+--------------+----------+------------+------------+------+
| custID | name         | nickname | city       | postalCode | age  |
+--------+--------------+----------+------------+------------+------+
| C04    | Denial Jack  | DJ       | Brazil     | 367562     |   27 |
| C05    | Donna Newman | New      | Toronto    | 363462     |   50 |
| C09    | Tony Special | Specie   | USA        | 254562     |   62 |
| C10    | Jack sp      | Sparrow  | New Jersey | 252562     |   22 |
+--------+--------------+----------+------------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer where age not in(22,27,50,62);
+--------+-----------------+----------+----------+------------+------+
| custID | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C01    | Ashley          | Ash      | WDC      | 321002     |   32 |
| C02    | Bob Marley      | BM       | Toronto  | 321222     |   38 |
| C03    | Cherlies Theron | Cher     | New York | 321562     |   25 |
| C06    | Eston M.        | M.       | Toronto  | 323362     |   48 |
| C07    | Bobby Chacko    | chac     | New York | 362062     |   29 |
| C08    | Ashko charles   | AK       | USA      | 364562     |   56 |
+--------+-----------------+----------+----------+------------+------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer where  city in('Toronto','GTA','USA','WDC');
+--------+---------------+----------+---------+------------+------+
| custID | name          | nickname | city    | postalCode | age  |
+--------+---------------+----------+---------+------------+------+
| C01    | Ashley        | Ash      | WDC     | 321002     |   32 |
| C02    | Bob Marley    | BM       | Toronto | 321222     |   38 |
| C05    | Donna Newman  | New      | Toronto | 363462     |   50 |
| C06    | Eston M.      | M.       | Toronto | 323362     |   48 |
| C08    | Ashko charles | AK       | USA     | 364562     |   56 |
| C09    | Tony Special  | Specie   | USA     | 254562     |   62 |
+--------+---------------+----------+---------+------------+------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer where  city in('T%','G%','N%');
Empty set (0.00 sec)

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
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select distinct(city) 'unique cities' from Customer;
+---------------+
| unique cities |
+---------------+
| WDC           |
| Toronto       |
| New York      |
| Brazil        |
| USA           |
| New Jersey    |
+---------------+
6 rows in set (0.03 sec)

MariaDB [CSD2204S18]> select count(distinct(city)) 'unique cities' from Customer;
+---------------+
| unique cities |
+---------------+
|             6 |
+---------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer order by name;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C08    | Ashko charles   | AK       | USA        | 364562     |   56 |
| C01    | Ashley          | Ash      | WDC        | 321002     |   32 |
| C02    | Bob Marley      | BM       | Toronto    | 321222     |   38 |
| C07    | Bobby Chacko    | chac     | New York   | 362062     |   29 |
| C03    | Cherlies Theron | Cher     | New York   | 321562     |   25 |
| C04    | Denial Jack     | DJ       | Brazil     | 367562     |   27 |
| C05    | Donna Newman    | New      | Toronto    | 363462     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 323362     |   48 |
| C10    | Jack sp         | Sparrow  | New Jersey | 252562     |   22 |
| C09    | Tony Special    | Specie   | USA        | 254562     |   62 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.02 sec)

MariaDB [CSD2204S18]> select * from Customer order by name;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C08    | Ashko charles   | AK       | USA        | 364562     |   56 |
| C01    | Ashley          | Ash      | WDC        | 321002     |   32 |
| C02    | Bob Marley      | BM       | Toronto    | 321222     |   38 |
| C07    | Bobby Chacko    | chac     | New York   | 362062     |   29 |
| C03    | Cherlies Theron | Cher     | New York   | 321562     |   25 |
| C04    | Denial Jack     | DJ       | Brazil     | 367562     |   27 |
| C05    | Donna Newman    | New      | Toronto    | 363462     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 323362     |   48 |
| C10    | Jack sp         | Sparrow  | New Jersey | 252562     |   22 |
| C09    | Tony Special    | Specie   | USA        | 254562     |   62 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer order by name asc;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C08    | Ashko charles   | AK       | USA        | 364562     |   56 |
| C01    | Ashley          | Ash      | WDC        | 321002     |   32 |
| C02    | Bob Marley      | BM       | Toronto    | 321222     |   38 |
| C07    | Bobby Chacko    | chac     | New York   | 362062     |   29 |
| C03    | Cherlies Theron | Cher     | New York   | 321562     |   25 |
| C04    | Denial Jack     | DJ       | Brazil     | 367562     |   27 |
| C05    | Donna Newman    | New      | Toronto    | 363462     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 323362     |   48 |
| C10    | Jack sp         | Sparrow  | New Jersey | 252562     |   22 |
| C09    | Tony Special    | Specie   | USA        | 254562     |   62 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer order by name desc;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C09    | Tony Special    | Specie   | USA        | 254562     |   62 |
| C10    | Jack sp         | Sparrow  | New Jersey | 252562     |   22 |
| C06    | Eston M.        | M.       | Toronto    | 323362     |   48 |
| C05    | Donna Newman    | New      | Toronto    | 363462     |   50 |
| C04    | Denial Jack     | DJ       | Brazil     | 367562     |   27 |
| C03    | Cherlies Theron | Cher     | New York   | 321562     |   25 |
| C07    | Bobby Chacko    | chac     | New York   | 362062     |   29 |
| C02    | Bob Marley      | BM       | Toronto    | 321222     |   38 |
| C01    | Ashley          | Ash      | WDC        | 321002     |   32 |
| C08    | Ashko charles   | AK       | USA        | 364562     |   56 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer order by age desc;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C09    | Tony Special    | Specie   | USA        | 254562     |   62 |
| C08    | Ashko charles   | AK       | USA        | 364562     |   56 |
| C05    | Donna Newman    | New      | Toronto    | 363462     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 323362     |   48 |
| C02    | Bob Marley      | BM       | Toronto    | 321222     |   38 |
| C01    | Ashley          | Ash      | WDC        | 321002     |   32 |
| C07    | Bobby Chacko    | chac     | New York   | 362062     |   29 |
| C04    | Denial Jack     | DJ       | Brazil     | 367562     |   27 |
| C03    | Cherlies Theron | Cher     | New York   | 321562     |   25 |
| C10    | Jack sp         | Sparrow  | New Jersey | 252562     |   22 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer order by age desc limit 1;
+--------+--------------+----------+------+------------+------+
| custID | name         | nickname | city | postalCode | age  |
+--------+--------------+----------+------+------------+------+
| C09    | Tony Special | Specie   | USA  | 254562     |   62 |
+--------+--------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer order by age desc limit 2;
+--------+---------------+----------+------+------------+------+
| custID | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| C09    | Tony Special  | Specie   | USA  | 254562     |   62 |
| C08    | Ashko charles | AK       | USA  | 364562     |   56 |
+--------+---------------+----------+------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer order by age asc limit 2;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C10    | Jack sp         | Sparrow  | New Jersey | 252562     |   22 |
| C03    | Cherlies Theron | Cher     | New York   | 321562     |   25 |
+--------+-----------------+----------+------------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer order by age asc limit 1;
+--------+---------+----------+------------+------------+------+
| custID | name    | nickname | city       | postalCode | age  |
+--------+---------+----------+------------+------------+------+
| C10    | Jack sp | Sparrow  | New Jersey | 252562     |   22 |
+--------+---------+----------+------------+------------+------+
1 row in set (0.00 sec)

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
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer order by age desc limit 2 not limit 1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'not limit 1' at line 1
MariaDB [CSD2204S18]> select * from Customer order by age asc limit 2;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C10    | Jack sp         | Sparrow  | New Jersey | 252562     |   22 |
| C03    | Cherlies Theron | Cher     | New York   | 321562     |   25 |
+--------+-----------------+----------+------------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer order by age desc limit 1;
+--------+--------------+----------+------+------------+------+
| custID | name         | nickname | city | postalCode | age  |
+--------+--------------+----------+------+------------+------+
| C09    | Tony Special | Specie   | USA  | 254562     |   62 |
+--------+--------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer order by age desc limit 2;
+--------+---------------+----------+------+------------+------+
| custID | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| C09    | Tony Special  | Specie   | USA  | 254562     |   62 |
| C08    | Ashko charles | AK       | USA  | 364562     |   56 |
+--------+---------------+----------+------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer order by age desc limit >1 and limit <3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '>1 and limit <3' at line 1
MariaDB [CSD2204S18]> select * from Customer order by age desc limit 2;
+--------+---------------+----------+------+------------+------+
| custID | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| C09    | Tony Special  | Specie   | USA  | 254562     |   62 |
| C08    | Ashko charles | AK       | USA  | 364562     |   56 |
+--------+---------------+----------+------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from (select * from Customer order by age desc limit 2)limit 1;
ERROR 1248 (42000): Every derived table must have its own alias
MariaDB [CSD2204S18]> select * from (select * from Customer order by age desc limit 2)as t order by age limit 1;
+--------+---------------+----------+------+------------+------+
| custID | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| C08    | Ashko charles | AK       | USA  | 364562     |   56 |
+--------+---------------+----------+------+------------+------+
1 row in set (0.00 sec)

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
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from Customer order by age asc limit 2;
+--------+-----------------+----------+------------+------------+------+
| custID | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C10    | Jack sp         | Sparrow  | New Jersey | 252562     |   22 |
| C03    | Cherlies Theron | Cher     | New York   | 321562     |   25 |
+--------+-----------------+----------+------------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> select * from (select * from Customer order by age asc limit 2)as t order by age limit 1;
+--------+---------+----------+------------+------------+------+
| custID | name    | nickname | city       | postalCode | age  |
+--------+---------+----------+------------+------------+------+
| C10    | Jack sp | Sparrow  | New Jersey | 252562     |   22 |
+--------+---------+----------+------------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select * from (select * from Customer order by age asc limit 2)as t order by age desc limit 1;
+--------+-----------------+----------+----------+------------+------+
| custID | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | Cherlies Theron | Cher     | New York | 321562     |   25 |
+--------+-----------------+----------+----------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select MAX(age)*100 from Customer;
+--------------+
| MAX(age)*100 |
+--------------+
|         6200 |
+--------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select MAX(age)+10*20/2 from Customer;
+------------------+
| MAX(age)+10*20/2 |
+------------------+
|         162.0000 |
+------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> select MAX(age)+10*20/2 from Customer;
+------------------+
| MAX(age)+10*20/2 |
+------------------+
|         162.0000 |
+------------------+
1 row in set (0.00 sec)

