SQL> -- Ahmad Dhani Ibrahim_103122400058_SE-08-02
SQL> CREATE TABLE mahasiswa (nim VARCHAR2(10) PRIMARY KEY, nama VARCHAR2(30), umur NUMBER, jurusan VARCHAR2(20)):
  2  
SQL> CREATE TABLE mahasiswa (nim VARCHAR2(10) PRIMARY KEY, nama VARCHAR2(30), umur NUMBER, jurusan VARCHAR2(20));
CREATE TABLE mahasiswa (nim VARCHAR2(10) PRIMARY KEY, nama VARCHAR2(30), umur NUMBER, jurusan VARCHAR2(20))
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object 


SQL> DROP TABLE mahasiswa;

Table dropped.

SQL> CREATE TABLE mahasiswa (nim VARCHAR2(10) PRIMARY KEY, nama VARCHAR2(30), umur NUMBER, jurusan VARCHAR2(20));

Table created.

SQL> DROP TABLE jurusan;
DROP TABLE jurusan
           *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> drop table mata_kuliah;

Table dropped.

SQL> CREATE TABLE mata_kuliah (kode_mk VARCHAR2(10) PRIMARY KEY, nama_mk VARCHAR2(30));

Table created.

SQL> desc mahasiswa;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 NIM                                       NOT NULL VARCHAR2(10)
 NAMA                                               VARCHAR2(30)
 UMUR                                               NUMBER
 JURUSAN                                            VARCHAR2(20)

SQL> desc mata_kuliah
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 KODE_MK                                   NOT NULL VARCHAR2(10)
 NAMA_MK                                            VARCHAR2(30)

SQL> insert into mahasiswa VALUES ('1031221', 'Jokowow', 20, 'Informatika');

1 row created.

SQL> insert into mahasiswa VALUES ('1031222', 'Prabroro', 19, 'Software Engineering');

1 row created.

SQL> insert into mahasiswa VALUES ('1031223', 'Janggar', 21, 'Sains Data');

1 row created.

SQL> insert into mata_kuliah VALUES ('BSD01', 'Basis Data');

1 row created.

SQL> insert into mata_kuliah VALUES ('WBD02', 'Web Developer');

1 row created.

SQL> insert into mata_kuliah VALUES ('MBD03', 'Mobile Developer');

1 row created.

SQL> select * from mahasiswa;

NIM        NAMA                                 UMUR JURUSAN                    
---------- ------------------------------ ---------- --------------------       
1031221    Jokowow                                20 Informatika                
1031222    Prabroro                               19 Software Engineering       
1031223    Janggar                                21 Sains Data                 

SQL> select * from mata_kuliah;

KODE_MK    NAMA_MK                                                              
---------- ------------------------------                                       
BSD01      Basis Data                                                           
WBD02      Web Developer                                                        
MBD03      Mobile Developer                                                     

SQL> update mahasiswa SET nama ='Pablo' WHERE nim = '1031222';

1 row updated.

SQL> delete FROM mata_kuliah WHERE kode_mk ='MBD03';

1 row deleted.

SQL> CREATE VIEW view_mahasiswa AS
  2  SELECT m.nim, m.nama, m.jurusan, mk.nama_mk
  3  FROM mahasiswa m
  4  JOIN mata_kuliah mk
  5  ON
  6  
SQL> ALTER TABLE mata_kuliah ADD (jurusan VARCHAR(20));

Table altered.

SQL> update mata_kuliah SET jurusan = 'Informatika' WHERE kode_mk='WBD02';

1 row updated.

SQL> update mata_kuliah SET jurusan = 'Sains Data' WHERE kode_mk='BSD01';

1 row updated.

SQL> select * from mata_kuliah;

KODE_MK    NAMA_MK                        JURUSAN                               
---------- ------------------------------ --------------------                  
BSD01      Basis Data                     Sains Data                            
WBD02      Web Developer                  Informatika                           

SQL> CREATE VIEW view_mahasiswa AS
  2  SELECT m.nim, m.nama, m.jurusan, mk.nama_mk
  3  FROM mahasiswa m
  4  JOIN mata_kuliah mk
  5  ON m.jurusan mk.jurusan;
ON m.jurusan mk.jurusan
             *
ERROR at line 5:
ORA-00920: invalid relational operator 


SQL> CREATE VIEW view_mahasiswa AS
  2  SELECT m.nim, m.nama, m.jurusan, mk.nama_mk
  3  FROM mahasiswa m
  4  JOIN mata_kuliah mk
  5  ON m.jurusan = mk.jurusan;

View created.

SQL> select * from view_mahasiswa;

NIM        NAMA                           JURUSAN                               
---------- ------------------------------ --------------------                  
NAMA_MK                                                                         
------------------------------                                                  
1031221    Jokowow                        Informatika                           
Web Developer                                                                   
                                                                                
1031223    Janggar                        Sains Data                            
Basis Data                                                                      
                                                                                

SQL> SPOOL OFF
