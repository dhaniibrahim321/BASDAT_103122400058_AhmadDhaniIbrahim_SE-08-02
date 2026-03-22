SQL> --103122400058_Ahmad Dhani Ibrahim_SE-08-02
SQL> CREATE TABLE TEATER (nomor_teater NUMBER PRIMARY KEY);

Table created.

SQL> ALTER TABLE TEATER MODIFY nomor_teater VARCHAR2(20):
  2  
SQL> ALTER TABLE TEATER MODIFY nomor_teater VARCHAR2(20);

Table altered.

SQL> CREATE TABLE KURSI
  2  (nomor_kursi VARCHAR2(10),
  3  nomor_teater VARCHAR2(20),
  4  FOREIGN KEY (nomor_teater) REFERENCES TEATER(nomor_teater));

Table created.

SQL> INSERT INTO TEATER VALUES('Teater 1');

1 row created.

SQL> INSERT INTO TEATER VALUES('Teater 2');

1 row created.

SQL> INSERT INTO TEATER VALUES('Teater 3');

1 row created.

SQL> INSERT INTO TEATER VALUES('Teater 4');

1 row created.

SQL> INSERT INTO TEATER VALUES('Teater 5');

1 row created.

SQL> INSERT INTO KURSI VALUES ('A1','Teater 1');

1 row created.

SQL> INSERT INTO KURSI VALUES ('A2','Teater 1');

1 row created.

SQL> INSERT INTO KURSI VALUES ('A3','Teater 1');

1 row created.

SQL> INSERT INTO KURSI VALUES ('A4','Teater 1');

1 row created.

SQL> INSERT INTO KURSI VALUES ('A5','Teater 1');

1 row created.

SQL> INSERT INTO KURSI VALUES ('B1','Teater 2');

1 row created.

SQL> INSERT INTO KURSI VALUES ('B2','Teater 2');

1 row created.

SQL> INSERT INTO KURSI VALUES ('B3','Teater 2');

1 row created.

SQL> INSERT INTO KURSI VALUES ('B4','Teater 2');

1 row created.

SQL> INSERT INTO KURSI VALUES ('B5','Teater 2');

1 row created.

SQL> INSERT INTO KURSI VALUES ('C1','Teater 3');

1 row created.

SQL> INSERT INTO KURSI VALUES ('C2','Teater 3');

1 row created.

SQL> INSERT INTO KURSI VALUES ('C3','Teater 3');

1 row created.

SQL> INSERT INTO KURSI VALUES ('C4','Teater 3');

1 row created.

SQL> INSERT INTO KURSI VALUES ('C5','Teater 3');

1 row created.

SQL> INSERT INTO KURSI VALUES ('D1','Teater 4');

1 row created.

SQL> INSERT INTO KURSI VALUES ('D2','Teater 4');

1 row created.

SQL> INSERT INTO KURSI VALUES ('D3','Teater 4');

1 row created.

SQL> INSERT INTO KURSI VALUES ('D4','Teater 4');

1 row created.

SQL> INSERT INTO KURSI VALUES ('D5','Teater 4');

1 row created.

SQL> INSERT INTO KURSI VALUES ('E1','Teater 5');

1 row created.

SQL> INSERT INTO KURSI VALUES ('E2','Teater 5');

1 row created.

SQL> INSERT INTO KURSI VALUES ('E3','Teater 5');

1 row created.

SQL> INSERT INTO KURSI VALUES ('E4','Teater 5');

1 row created.

SQL> INSERT INTO KURSI VALUES ('E5','Teater 5');

1 row created.

SQL> SELECT TEATER
  2  
SQL> SELECT TEATER.nomor_teater, KURSI.nomor_kursi
  2  FROM TEATER
  3  JOIN KURSI ON TEATER.nomor_teater = KURSI.nomor_teater;

NOMOR_TEATER         NOMOR_KURS                                                 
-------------------- ----------                                                 
Teater 1             A1                                                         
Teater 1             A2                                                         
Teater 1             A3                                                         
Teater 1             A4                                                         
Teater 1             A5                                                         
Teater 2             B1                                                         
Teater 2             B2                                                         
Teater 2             B3                                                         
Teater 2             B4                                                         
Teater 2             B5                                                         
Teater 3             C1                                                         

NOMOR_TEATER         NOMOR_KURS                                                 
-------------------- ----------                                                 
Teater 3             C2                                                         
Teater 3             C3                                                         
Teater 3             C4                                                         
Teater 3             C5                                                         
Teater 4             D1                                                         
Teater 4             D2                                                         
Teater 4             D3                                                         
Teater 4             D4                                                         
Teater 4             D5                                                         
Teater 5             E1                                                         
Teater 5             E2                                                         

NOMOR_TEATER         NOMOR_KURS                                                 
-------------------- ----------                                                 
Teater 5             E3                                                         
Teater 5             E4                                                         
Teater 5             E5                                                         

25 rows selected.

SQL> SPOOL OFF
