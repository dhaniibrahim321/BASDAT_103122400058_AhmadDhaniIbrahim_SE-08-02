SQL> --Ahmad Dhani Ibrahim_103122400058_SE-08-02
SQL> CREATE TABLE film (id_film NUMBER PRIMARY KEY, judul VARCHAR2(50),
  2  sinopsis VARCHAR2(500), tahun NUMBER, durasi NUMBER);
CREATE TABLE film (id_film NUMBER PRIMARY KEY, judul VARCHAR2(50),
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object 


SQL> drop table film;

Table dropped.

SQL> CREATE TABLE film (id_film NUMBER PRIMARY KEY, judul VARCHAR2(50),
  2  sinopsis VARCHAR2(500), tahun NUMBER, durasi NUMBER);

Table created.

SQL> desc film;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_FILM                                   NOT NULL NUMBER
 JUDUL                                              VARCHAR2(50)
 SINOPSIS                                           VARCHAR2(500)
 TAHUN                                              NUMBER
 DURASI                                             NUMBER

SQL> CREATE TABLE theater
  2  (id_theater NUMBER PRIMARY KEY,
  3  harga NUMBER,
  4  kapasitas NUMBER,
  5  kelas VARCHAR2(20));

Table created.

SQL> desc theater;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_THEATER                                NOT NULL NUMBER
 HARGA                                              NUMBER
 KAPASITAS                                          NUMBER
 KELAS                                              VARCHAR2(20)

SQL> CREATE TABLE member
  2  (id_member NUMBER PRIMARY KEY,
  3  nama VARCHAR2(30),
  4  no_hp VARCHAR2(20),
  5  tgl_lahir DATE,
  6  email VARCHAR2(50));

Table created.

SQL> desc member;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_MEMBER                                 NOT NULL NUMBER
 NAMA                                               VARCHAR2(30)
 NO_HP                                              VARCHAR2(20)
 TGL_LAHIR                                          DATE
 EMAIL                                              VARCHAR2(50)

SQL> CREATE TABLE jadwal
  2  (id_jadwal NUMBER PRIMARY KEY,
  3  id_film NUMBER;
id_film NUMBER
             *
ERROR at line 3:
ORA-00907: missing right parenthesis 


SQL> CREATE TABLE jadwal
  2  (id_jadwal NUMBER PRIMARY KEY,
  3  id_film NUMBER,
  4  id_theater NUMBER,
  5  period_start DATE,
  6  period_end DATE,
  7  FOREIGN KEY (id_film) REFERENCES film(id_film),
  8  FOREIGN KEY (id_theater) REFERENCES theater(id_theater));

Table created.

SQL> desc jadwal;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_JADWAL                                 NOT NULL NUMBER
 ID_FILM                                            NUMBER
 ID_THEATER                                         NUMBER
 PERIOD_START                                       DATE
 PERIOD_END                                         DATE

SQL> CREATE TABLE inventaris
  2  (id_inventaris NUMBER PRIMARY KEY,
  3  id_theater NUMBER,
  4  nomor_kursi NUMBER,
  5  FOREIGN KEY (id_theater) REFERENCES theater(id_theater));

Table created.

SQL> desc inventaris;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_INVENTARIS                             NOT NULL NUMBER
 ID_THEATER                                         NUMBER
 NOMOR_KURSI                                        NUMBER

SQL> CREATE TABLE transaksi
  2  (kode_pemesanan NUMBER PRIMARY KEY,)
  3  
SQL> CREATE TABLE transaksi
  2  (kode_pemesanan NUMBER PRIMARY KEY,
  3  id_jadwal NUMBER,
  4  id_member NUMBER,
  5  status VARCHAR(25),
  6  tanggal DATE,
  7  total_harga NUMBER,
  8  FOREIGN KEY (id_jadwal) REFERENCES jadwal(id_jadwal),
  9  FOREIGN KEY (id_member) REFERENCES member(id_member));

Table created.

SQL> desc transaksi;\
SP2-0565: Illegal identifier.
SQL> desc transaksi;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 KODE_PEMESANAN                            NOT NULL NUMBER
 ID_JADWAL                                          NUMBER
 ID_MEMBER                                          NUMBER
 STATUS                                             VARCHAR2(25)
 TANGGAL                                            DATE
 TOTAL_HARGA                                        NUMBER

SQL> INSERT into film VALUES (01, 'The Walking Dead: Dead City', 'Menceritakan tentang wabah zombie yang sudah menyebar di seluruh dunia', 2023, 90);

1 row created.

SQL> INSERT into film VALUES (01, 'Dramok Teror Ambarukmo' , 2023, 90);
INSERT into film VALUES (01, 'Dramok Teror Ambarukmo' , 2023, 90)
            *
ERROR at line 1:
ORA-00947: not enough values 


SQL> INSERT into film VALUES (02, 'Dramok Teror Ambarukmo' ,'Menceritakan legenda ambarukmo yang suka meneror warga Rongawi Selatan', 2026, 120);

1 row created.

SQL> INSERT into film VALUES (03, 'The Batman', 'Kisah Bruce Wayne membasmi kejahatan dalam kegelapan', 2022, 100);

1 row created.

SQL> select * from film;

   ID_FILM JUDUL                                                                
---------- --------------------------------------------------                   
SINOPSIS                                                                        
--------------------------------------------------------------------------------
     TAHUN     DURASI                                                           
---------- ----------                                                           
         1 The Walking Dead: Dead City                                          
Menceritakan tentang wabah zombie yang sudah menyebar di seluruh dunia          
      2023         90                                                           
                                                                                
         2 Dramok Teror Ambarukmo                                               
Menceritakan legenda ambarukmo yang suka meneror warga Rongawi Selatan          
      2026        120                                                           

   ID_FILM JUDUL                                                                
---------- --------------------------------------------------                   
SINOPSIS                                                                        
--------------------------------------------------------------------------------
     TAHUN     DURASI                                                           
---------- ----------                                                           
                                                                                
         3 The Batman                                                           
Kisah Bruce Wayne membasmi kejahatan dalam kegelapan                            
      2022        100                                                           
                                                                                

SQL> INSERT INTO theater VALUES(001, 50000, 90, 'Regular');

1 row created.

SQL> INSERT INTO theater VALUES(002, 85000, 100, 'VIP');

1 row created.

SQL> INSERT INTO theater VALUES(003, 100000, 120, 'VVIP');

1 row created.

SQL> select * from theater;

ID_THEATER      HARGA  KAPASITAS KELAS                                          
---------- ---------- ---------- --------------------                           
         1      50000         90 Regular                                        
         2      85000        100 VIP                                            
         3     100000        120 VVIP                                           

SQL> INSERT INTO member VALUES (1, 'Dhani', '087654321', TO_DATE('10-05-2006', 'DD-MM-YYYY'), 'dhaniibrahim@gmail.com');

1 row created.

SQL> INSERT INTO member VALUES (2, 'Joko', '081234567', TO_DATE('31-12-1995', 'DD-MM-YYYY'), 'jokow@gmail.com');

1 row created.

SQL> INSERT INTO member VALUES (3, 'Nia', '081234569', TO_DATE('01-03-2006', 'DD-MM-YYYY'), 'nia@gmail.com');

1 row created.

SQL> select * from member;

 ID_MEMBER NAMA                           NO_HP                TGL_LAHIR        
---------- ------------------------------ -------------------- ---------        
EMAIL                                                                           
--------------------------------------------------                              
         1 Dhani                          087654321            10-MAY-06        
dhaniibrahim@gmail.com                                                          
                                                                                
         2 Joko                           081234567            31-DEC-95        
jokow@gmail.com                                                                 
                                                                                
         3 Nia                            081234569            01-MAR-06        
nia@gmail.com                                                                   
                                                                                

SQL> desc jadwal;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_JADWAL                                 NOT NULL NUMBER
 ID_FILM                                            NUMBER
 ID_THEATER                                         NUMBER
 PERIOD_START                                       DATE
 PERIOD_END                                         DATE

SQL> INSERT INTO jadwal VALUES (1, 01, 001, TO_DATE('01-03-2006 19:30' , 'DD-MM-YYYY HH24-MI'), TO_DATE('01-03-2006 21:00' , 'DD-MM-YYYY HH24-MI'));

1 row created.

SQL> INSERT INTO jadwal VALUES (2, 02, 002, TO_DATE('14-03-2026 13:00' , 'DD-MM-YYYY HH24-MI'), TO_DATE('14-03-2026 15:00' , 'DD-MM-YYYY HH24-MI'));

1 row created.

SQL> INSERT INTO jadwal VALUES (3, 03, 003, TO_DATE('14-03-2026 15:30' , 'DD-MM-YYYY HH24-MI'), TO_DATE('14-03-2026 17:00' , 'DD-MM-YYYY HH24-MI'));

1 row created.

SQL> select * from jadwal;

 ID_JADWAL    ID_FILM ID_THEATER PERIOD_ST PERIOD_EN                            
---------- ---------- ---------- --------- ---------                            
         1          1          1 01-MAR-06 01-MAR-06                            
         2          2          2 14-MAR-26 14-MAR-26                            
         3          3          3 14-MAR-26 14-MAR-26                            

SQL> desc inventaris
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_INVENTARIS                             NOT NULL NUMBER
 ID_THEATER                                         NUMBER
 NOMOR_KURSI                                        NUMBER

SQL> INSERT INTO inventaris VALUES(101, 001, 1);

1 row created.

SQL> INSERT INTO inventaris VALUES(102, 002, 2);

1 row created.

SQL> INSERT INTO inventaris VALUES(103, 003, 3);

1 row created.

SQL> select * from inventaris;

ID_INVENTARIS ID_THEATER NOMOR_KURSI                                            
------------- ---------- -----------                                            
          101          1           1                                            
          102          2           2                                            
          103          3           3                                            

SQL> select * from transaksi;

no rows selected

SQL> desc transaksi
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 KODE_PEMESANAN                            NOT NULL NUMBER
 ID_JADWAL                                          NUMBER
 ID_MEMBER                                          NUMBER
 STATUS                                             VARCHAR2(25)
 TANGGAL                                            DATE
 TOTAL_HARGA                                        NUMBER

SQL> INSERT INTO transaksi VALUES (1001, 1, 1, 'LUNAS', TO_DATE('14-03-2026', 'DD-MM-YYYY'). 100000);
INSERT INTO transaksi VALUES (1001, 1, 1, 'LUNAS', TO_DATE('14-03-2026', 'DD-MM-YYYY'). 100000)
                                                                                        *
ERROR at line 1:
ORA-00919: invalid function 


SQL> INSERT INTO transaksi VALUES (1001, 1, 1, 'LUNAS', TO_DATE('14-03-2026', 'DD-MM-YYYY'), 100000);

1 row created.

SQL> INSERT INTO transaksi VALUES (1002, 2, 2, 'MENUNGGU PEMBAYARAN', TO_DATE('14-03-2026', 'DD-MM-YYYY'), 50000);

1 row created.

SQL> INSERT INTO transaksi VALUES (1003, 3, 3, 'LUNAS', TO_DATE('14-03-2026', 'DD-MM-YYYY'), 85000);

1 row created.

SQL> select * into transaksi;
select * into transaksi
                      *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select * from transaksi;

KODE_PEMESANAN  ID_JADWAL  ID_MEMBER STATUS                    TANGGAL          
-------------- ---------- ---------- ------------------------- ---------        
TOTAL_HARGA                                                                     
-----------                                                                     
          1001          1          1 LUNAS                     14-MAR-26        
     100000                                                                     
                                                                                
          1002          2          2 MENUNGGU PEMBAYARAN       14-MAR-26        
      50000                                                                     
                                                                                
          1003          3          3 LUNAS                     14-MAR-26        
      85000                                                                     
                                                                                

SQL> UPDATE jadwal SET period_start = TO_DATE('01-03-2006 19:30', 'DD-MM-YYYY') WHERE id_jadwal = 1;
UPDATE jadwal SET period_start = TO_DATE('01-03-2006 19:30', 'DD-MM-YYYY') WHERE id_jadwal = 1
                                         *
ERROR at line 1:
ORA-01830: date format picture ends before converting entire input string 


SQL> UPDATE jadwal SET period_start = TO_DATE('01-03-2026 19:30', 'DD-MM-YYYY HH24:MI') WHERE id_jadwal = 1;

1 row updated.

SQL> UPDATE jadwal SET period_end = TO_DATE('01-03-2026 21:00', 'DD-MM-YYYY HH24:MI') WHERE id_jadwal = 1;

1 row updated.

SQL> UPDATE transaksi SET STATUS = 'LUNAS' WHERE kode_pemesanan = 1001;

1 row updated.

SQL> UPDATE film SET tahun = 2026 WHERE id_film = 02;

1 row updated.

SQL> UPDATE member SET nama = 'Jokowow' WHERE id_member = 02;

1 row updated.

SQL> select * from jadwal;

 ID_JADWAL    ID_FILM ID_THEATER PERIOD_ST PERIOD_EN                            
---------- ---------- ---------- --------- ---------                            
         1          1          1 01-MAR-26 01-MAR-26                            
         2          2          2 14-MAR-26 14-MAR-26                            
         3          3          3 14-MAR-26 14-MAR-26                            

SQL> select * from transaksi;

KODE_PEMESANAN  ID_JADWAL  ID_MEMBER STATUS                    TANGGAL          
-------------- ---------- ---------- ------------------------- ---------        
TOTAL_HARGA                                                                     
-----------                                                                     
          1001          1          1 LUNAS                     14-MAR-26        
     100000                                                                     
                                                                                
          1002          2          2 MENUNGGU PEMBAYARAN       14-MAR-26        
      50000                                                                     
                                                                                
          1003          3          3 LUNAS                     14-MAR-26        
      85000                                                                     
                                                                                

SQL> UPDATE transaksi SET = 'LUNAS' WHERE kode_pemesanan = 1002;
UPDATE transaksi SET = 'LUNAS' WHERE kode_pemesanan = 1002
                     *
ERROR at line 1:
ORA-01747: invalid user.table.column, table.column, or column specification 


SQL> UPDATE transaksi SET status = 'LUNAS' WHERE kode_pemesanan = 1002;

1 row updated.

SQL> select * from transaksi;

KODE_PEMESANAN  ID_JADWAL  ID_MEMBER STATUS                    TANGGAL          
-------------- ---------- ---------- ------------------------- ---------        
TOTAL_HARGA                                                                     
-----------                                                                     
          1001          1          1 LUNAS                     14-MAR-26        
     100000                                                                     
                                                                                
          1002          2          2 LUNAS                     14-MAR-26        
      50000                                                                     
                                                                                
          1003          3          3 LUNAS                     14-MAR-26        
      85000                                                                     
                                                                                

SQL> select * from film;

   ID_FILM JUDUL                                                                
---------- --------------------------------------------------                   
SINOPSIS                                                                        
--------------------------------------------------------------------------------
     TAHUN     DURASI                                                           
---------- ----------                                                           
         1 The Walking Dead: Dead City                                          
Menceritakan tentang wabah zombie yang sudah menyebar di seluruh dunia          
      2023         90                                                           
                                                                                
         2 Dramok Teror Ambarukmo                                               
Menceritakan legenda ambarukmo yang suka meneror warga Rongawi Selatan          
      2026        120                                                           

   ID_FILM JUDUL                                                                
---------- --------------------------------------------------                   
SINOPSIS                                                                        
--------------------------------------------------------------------------------
     TAHUN     DURASI                                                           
---------- ----------                                                           
                                                                                
         3 The Batman                                                           
Kisah Bruce Wayne membasmi kejahatan dalam kegelapan                            
      2022        100                                                           
                                                                                

SQL> select * from member;

 ID_MEMBER NAMA                           NO_HP                TGL_LAHIR        
---------- ------------------------------ -------------------- ---------        
EMAIL                                                                           
--------------------------------------------------                              
         1 Dhani                          087654321            10-MAY-06        
dhaniibrahim@gmail.com                                                          
                                                                                
         2 Jokowow                        081234567            31-DEC-95        
jokow@gmail.com                                                                 
                                                                                
         3 Nia                            081234569            01-MAR-06        
nia@gmail.com                                                                   
                                                                                

SQL> DELETE FROM film WHERE id_film = 03;
DELETE FROM film WHERE id_film = 03
*
ERROR at line 1:
ORA-02292: integrity constraint (SYSTEM.SYS_C008323) violated - child record 
found 


SQL> DELETE FROM film WHERE id_film = 3;
DELETE FROM film WHERE id_film = 3
*
ERROR at line 1:
ORA-02292: integrity constraint (SYSTEM.SYS_C008323) violated - child record 
found 


SQL> DELETE FROM film WHERE id_film = 1;
DELETE FROM film WHERE id_film = 1
*
ERROR at line 1:
ORA-02292: integrity constraint (SYSTEM.SYS_C008323) violated - child record 
found 


SQL> DELETE FROM transaksi WHERE kode_transaksi = 1002;
DELETE FROM transaksi WHERE kode_transaksi = 1002
                            *
ERROR at line 1:
ORA-00904: "KODE_TRANSAKSI": invalid identifier 


SQL> DELETE FROM transaksi WHERE kode_pemesanan = 1002;

1 row deleted.

SQL> DELETE FROM jadwal WHERE id_jadwal = 1;
DELETE FROM jadwal WHERE id_jadwal = 1
*
ERROR at line 1:
ORA-02292: integrity constraint (SYSTEM.SYS_C008328) violated - child record 
found 


SQL> DELETE FROM member WHERE id_member = 2;

1 row deleted.

SQL> SPOOL OFF
