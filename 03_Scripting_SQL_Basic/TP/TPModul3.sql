SQL> --103122400058_Ahmad Dhani Ibrahim_SE-08-02
SQL> CREATE TABLE mahasiswa
  2  (id NUMBER PRIMARY KEY, nama VARCHAR2(30),
  3  tempat_lahir VARCHAR2(50),
  4  tanggal_lahir DATE,
  5  nomor_hp VARCHAR2(15),
  6  email VARCHAR2(50),
  7  tinggi_badan NUMBER,
  8  berat_badan NUMBER);
CREATE TABLE mahasiswa
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object 


SQL> 
SQL> DROP TABLE mahasiswa;

Table dropped.

SQL> CREATE TABLE mahasiswa
  2  (id NUMBER PRIMARY KEY, nama VARCHAR2(30),
  3  tempat_lahir VARCHAR2(50),
  4  tanggal_lahir DATE,
  5  nomor_hp VARCHAR2(15),
  6  email VARCHAR2(50),
  7  tinggi_badan NUMBER,
  8  berat_badan NUMBER);

Table created.

SQL> desc mahasiswa;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                        NOT NULL NUMBER
 NAMA                                               VARCHAR2(30)
 TEMPAT_LAHIR                                       VARCHAR2(50)
 TANGGAL_LAHIR                                      DATE
 NOMOR_HP                                           VARCHAR2(15)
 EMAIL                                              VARCHAR2(50)
 TINGGI_BADAN                                       NUMBER
 BERAT_BADAN                                        NUMBER

SQL> INSERT INTO mahasiswa VALUES
  2  (1, Joko, Banyumas, TO_DATE('04-11-2005', 'DD-MM-YYYY'), 081234567, joko@gmail.com, 168, 58);
INSERT INTO mahasiswa VALUES
*
ERROR at line 1:
ORA-04054: database link GMAIL.COM does not exist 


SQL> (1, Joko, Banyumas, TO_DATE('04-11-2005', 'DD-MM-YYYY'), '081234567', 'joko@gmail.com', 168, 58);
(1, Joko, Banyumas, TO_DATE('04-11-2005', 'DD-MM-YYYY'), '081234567', 'joko@gmail.com', 168, 58)
 *
ERROR at line 1:
ORA-00928: missing SELECT keyword 


SQL> INSERT INTO mahasiswa VALUES
  2  (1, Joko, Banyumas, TO_DATE('04-11-2005', 'DD-MM-YYYY'), '081234567', 'joko@gmail.com', 168, 58);
(1, Joko, Banyumas, TO_DATE('04-11-2005', 'DD-MM-YYYY'), '081234567', 'joko@gmail.com', 168, 58)
          *
ERROR at line 2:
ORA-00984: column not allowed here 


SQL> INSERT INTO mahasiswa VALUES
  2  (1, 'Joko', 'Banyumas', TO_DATE('04-11-2005', 'DD-MM-YYYY'), '081234567', 'joko@gmail.com', 168, 58);

1 row created.

SQL> INSERT INTO mahasiswa VALUES
  2  (2, 'Dhani', 'Kebumen', TO_DATE('20-05-2006', 'DD-MM-YYYY'), '081234568', 'dhani@gmail.com', 177, 60);

1 row created.

SQL> INSERT INTO mahasiswa VALUES
  2  (3, 'Dono', 'Cilacap', TO_DATE('12-04-2004', 'DD-MM-YYYY'), '081234569', 'dono@gmail.com', 170, 73);

1 row created.

SQL> (4, 'Yanti', 'Purbalingga', TO_DATE('23-08-2005', 'DD-MM-YYYY'), '081234565', 'yanti@gmail.com', 165, 53);
(4, 'Yanti', 'Purbalingga', TO_DATE('23-08-2005', 'DD-MM-YYYY'), '081234565', 'yanti@gmail.com', 165, 53)
 *
ERROR at line 1:
ORA-00928: missing SELECT keyword 


SQL> INSERT INTO mahasiswa VALUES
  2  (4, 'Yanti', 'Purbalingga', TO_DATE('23-08-2005', 'DD-MM-YYYY'), '081234565', 'yanti@gmail.com', 165, 53);

1 row created.

SQL> INSERT INTO mahasiswa VALUES
  2  (5, 'Coki', 'Jakarta', TO_DATE('01-03-2003', 'DD-MM-YYYY'), '081234561', 'coki@gmail.com', 172, 61);

1 row created.

SQL> INSERT INTO mahasiswa VALUES
  2  (6, 'Prowowo', 'Solo', TO_DATE('07-07-2007', 'DD-MM-YYYY'), '081234562', 'prowowo@gmail.com', 169, 63);

1 row created.

SQL> INSERT INTO mahasiswa VALUES
  2  (7, 'Habibi', 'Klaten', TO_DATE('19-12-2002', 'DD-MM-YYYY'), '081234563', 'habibi@gmail.com', 178, 80);

1 row created.

SQL> (8, 'Khofidinia', 'Kebumen', TO_DATE('01-03-2006', 'DD-MM-YYYY'), '081234564', 'khofidinia@gmail.com', 160, 51);
(8, 'Khofidinia', 'Kebumen', TO_DATE('01-03-2006', 'DD-MM-YYYY'), '081234564', 'khofidinia@gmail.com', 160, 51)
 *
ERROR at line 1:
ORA-00928: missing SELECT keyword 


SQL> INSERT INTO mahasiswa VALUES
  2  (8, 'Khofidinia', 'Kebumen', TO_DATE('01-03-2006', 'DD-MM-YYYY'), '081234564', 'khofidinia@gmail.com', 160, 51);

1 row created.

SQL> INSERT INTO mahasiswa VALUES
  2  (9, 'Marquez', 'Inggris', TO_DATE('01-03-2000', 'DD-MM-YYYY'), '081234565', 'marquez@gmail.com', 162, 66);

1 row created.

SQL> INSERT INTO mahasiswa VALUES
  2  (10, 'Daniel', 'Amerika', TO_DATE('10-05-2003', 'DD-MM-YYYY'), '081234566', 'daniel@gmail.com', 180, 72);

1 row created.

SQL> INSERT INTO mahasiswa VALUES
  2  (11, 'Alya', 'Banjarnegara', TO_DATE('26-09-2004', 'DD-MM-YYYY'), '081234518', 'alya@gmail.com', 154, 49);

1 row created.

SQL> (12, 'Wowo', 'Tangerang', TO_DATE('17-12-2004', 'DD-MM-YYYY'), '081234514', 'wowo@gmail.com', 165, 65);
(12, 'Wowo', 'Tangerang', TO_DATE('17-12-2004', 'DD-MM-YYYY'), '081234514', 'wowo@gmail.com', 165, 65)
 *
ERROR at line 1:
ORA-00928: missing SELECT keyword 


SQL> INSERT INTO mahasiswa VALUES
  2  (12, 'Wowo', 'Tangerang', TO_DATE('17-12-2004', 'DD-MM-YYYY'), '081234514', 'wowo@gmail.com', 165, 65);

1 row created.

SQL> INSERT INTO mahasiswa VALUES
  2  (13, 'Leo', 'Medan', TO_DATE('16-11-2003', 'DD-MM-YYYY'), '081234574', 'leo@gmail.com', 166, 63);

1 row created.

SQL> INSERT INTO mahasiswa VALUES
  2   (13, 'Yono', 'Palembang', TO_DATE('12-02-2001', 'DD-MM-YYYY'), '081234591', 'yono@gmail.com', 166, 55);
INSERT INTO mahasiswa VALUES
*
ERROR at line 1:
ORA-00001: unique constraint (SYSTEM.SYS_C008330) violated 


SQL> INSERT INTO mahasiswa VALUES
  2   (14, 'Yono', 'Palembang', TO_DATE('12-02-2001', 'DD-MM-YYYY'), '081234591', 'yono@gmail.com', 166, 55);

1 row created.

SQL> INSERT INTO mahasiswa VALUES
  2   (15, 'Yatno', 'Jogjakarta', TO_DATE('11-07-2001', 'DD-MM-YYYY'), '081234531', 'Yatno@gmail.com', 188, 77);

1 row created.

SQL> select * from mahasiswa;

        ID NAMA                                                                 
---------- ------------------------------                                       
TEMPAT_LAHIR                                       TANGGAL_L NOMOR_HP           
-------------------------------------------------- --------- ---------------    
EMAIL                                              TINGGI_BADAN BERAT_BADAN     
-------------------------------------------------- ------------ -----------     
         1 Joko                                                                 
Banyumas                                           04-NOV-05 081234567          
joko@gmail.com                                              168          58     
                                                                                
         2 Dhani                                                                
Kebumen                                            20-MAY-06 081234568          
dhani@gmail.com                                             177          60     

        ID NAMA                                                                 
---------- ------------------------------                                       
TEMPAT_LAHIR                                       TANGGAL_L NOMOR_HP           
-------------------------------------------------- --------- ---------------    
EMAIL                                              TINGGI_BADAN BERAT_BADAN     
-------------------------------------------------- ------------ -----------     
                                                                                
         3 Dono                                                                 
Cilacap                                            12-APR-04 081234569          
dono@gmail.com                                              170          73     
                                                                                
         4 Yanti                                                                
Purbalingga                                        23-AUG-05 081234565          

        ID NAMA                                                                 
---------- ------------------------------                                       
TEMPAT_LAHIR                                       TANGGAL_L NOMOR_HP           
-------------------------------------------------- --------- ---------------    
EMAIL                                              TINGGI_BADAN BERAT_BADAN     
-------------------------------------------------- ------------ -----------     
yanti@gmail.com                                             165          53     
                                                                                
         5 Coki                                                                 
Jakarta                                            01-MAR-03 081234561          
coki@gmail.com                                              172          61     
                                                                                
         6 Prowowo                                                              

        ID NAMA                                                                 
---------- ------------------------------                                       
TEMPAT_LAHIR                                       TANGGAL_L NOMOR_HP           
-------------------------------------------------- --------- ---------------    
EMAIL                                              TINGGI_BADAN BERAT_BADAN     
-------------------------------------------------- ------------ -----------     
Solo                                               07-JUL-07 081234562          
prowowo@gmail.com                                           169          63     
                                                                                
         7 Habibi                                                               
Klaten                                             19-DEC-02 081234563          
habibi@gmail.com                                            178          80     
                                                                                

        ID NAMA                                                                 
---------- ------------------------------                                       
TEMPAT_LAHIR                                       TANGGAL_L NOMOR_HP           
-------------------------------------------------- --------- ---------------    
EMAIL                                              TINGGI_BADAN BERAT_BADAN     
-------------------------------------------------- ------------ -----------     
         8 Khofidinia                                                           
Kebumen                                            01-MAR-06 081234564          
khofidinia@gmail.com                                        160          51     
                                                                                
         9 Marquez                                                              
Inggris                                            01-MAR-00 081234565          
marquez@gmail.com                                           162          66     

        ID NAMA                                                                 
---------- ------------------------------                                       
TEMPAT_LAHIR                                       TANGGAL_L NOMOR_HP           
-------------------------------------------------- --------- ---------------    
EMAIL                                              TINGGI_BADAN BERAT_BADAN     
-------------------------------------------------- ------------ -----------     
                                                                                
        10 Daniel                                                               
Amerika                                            10-MAY-03 081234566          
daniel@gmail.com                                            180          72     
                                                                                
        11 Alya                                                                 
Banjarnegara                                       26-SEP-04 081234518          

        ID NAMA                                                                 
---------- ------------------------------                                       
TEMPAT_LAHIR                                       TANGGAL_L NOMOR_HP           
-------------------------------------------------- --------- ---------------    
EMAIL                                              TINGGI_BADAN BERAT_BADAN     
-------------------------------------------------- ------------ -----------     
alya@gmail.com                                              154          49     
                                                                                
        12 Wowo                                                                 
Tangerang                                          17-DEC-04 081234514          
wowo@gmail.com                                              165          65     
                                                                                
        13 Leo                                                                  

        ID NAMA                                                                 
---------- ------------------------------                                       
TEMPAT_LAHIR                                       TANGGAL_L NOMOR_HP           
-------------------------------------------------- --------- ---------------    
EMAIL                                              TINGGI_BADAN BERAT_BADAN     
-------------------------------------------------- ------------ -----------     
Medan                                              16-NOV-03 081234574          
leo@gmail.com                                               166          63     
                                                                                
        14 Yono                                                                 
Palembang                                          12-FEB-01 081234591          
yono@gmail.com                                              166          55     
                                                                                

        ID NAMA                                                                 
---------- ------------------------------                                       
TEMPAT_LAHIR                                       TANGGAL_L NOMOR_HP           
-------------------------------------------------- --------- ---------------    
EMAIL                                              TINGGI_BADAN BERAT_BADAN     
-------------------------------------------------- ------------ -----------     
        15 Yatno                                                                
Jogjakarta                                         11-JUL-01 081234531          
Yatno@gmail.com                                             188          77     
                                                                                

15 rows selected.

SQL> SELECT nama,
  2  LOWER(nama) AS lowercase,
  3  UPPER(nama) AS uppercase
  4  FROM mahasiswa;

NAMA                           LOWERCASE                                        
------------------------------ ------------------------------                   
UPPERCASE                                                                       
------------------------------                                                  
Joko                           joko                                             
JOKO                                                                            
                                                                                
Dhani                          dhani                                            
DHANI                                                                           
                                                                                
Dono                           dono                                             
DONO                                                                            
                                                                                

NAMA                           LOWERCASE                                        
------------------------------ ------------------------------                   
UPPERCASE                                                                       
------------------------------                                                  
Yanti                          yanti                                            
YANTI                                                                           
                                                                                
Coki                           coki                                             
COKI                                                                            
                                                                                
Prowowo                        prowowo                                          
PROWOWO                                                                         
                                                                                

NAMA                           LOWERCASE                                        
------------------------------ ------------------------------                   
UPPERCASE                                                                       
------------------------------                                                  
Habibi                         habibi                                           
HABIBI                                                                          
                                                                                
Khofidinia                     khofidinia                                       
KHOFIDINIA                                                                      
                                                                                
Marquez                        marquez                                          
MARQUEZ                                                                         
                                                                                

NAMA                           LOWERCASE                                        
------------------------------ ------------------------------                   
UPPERCASE                                                                       
------------------------------                                                  
Daniel                         daniel                                           
DANIEL                                                                          
                                                                                
Alya                           alya                                             
ALYA                                                                            
                                                                                
Wowo                           wowo                                             
WOWO                                                                            
                                                                                

NAMA                           LOWERCASE                                        
------------------------------ ------------------------------                   
UPPERCASE                                                                       
------------------------------                                                  
Leo                            leo                                              
LEO                                                                             
                                                                                
Yono                           yono                                             
YONO                                                                            
                                                                                
Yatno                          yatno                                            
YATNO                                                                           
                                                                                

15 rows selected.

SQL> SELECT nama,
  2  INTICAP(nama) AS capitalized,
  3  FROM mahasiswa;
FROM mahasiswa
*
ERROR at line 3:
ORA-00936: missing expression 


SQL> SELECT nama,
  2  INTICAP(nama) AS capitalized
  3  FROM mahasiswa;
INTICAP(nama) AS capitalized
*
ERROR at line 2:
ORA-00904: "INTICAP": invalid identifier 


SQL> SELECT nama,
  2  INITCAP(nama) AS capitalized
  3  FROM mahasiswa;

NAMA                           CAPITALIZED                                      
------------------------------ ------------------------------                   
Joko                           Joko                                             
Dhani                          Dhani                                            
Dono                           Dono                                             
Yanti                          Yanti                                            
Coki                           Coki                                             
Prowowo                        Prowowo                                          
Habibi                         Habibi                                           
Khofidinia                     Khofidinia                                       
Marquez                        Marquez                                          
Daniel                         Daniel                                           
Alya                           Alya                                             

NAMA                           CAPITALIZED                                      
------------------------------ ------------------------------                   
Wowo                           Wowo                                             
Leo                            Leo                                              
Yono                           Yono                                             
Yatno                          Yatno                                            

15 rows selected.

SQL> SELECT nama,
  2  )
  3  
SQL> SELECT nama
  2  ||' - '|| email AS Concat FROM mahasiswa;

CONCAT                                                                          
--------------------------------------------------------------------------------
Joko - joko@gmail.com                                                           
Dhani - dhani@gmail.com                                                         
Dono - dono@gmail.com                                                           
Yanti - yanti@gmail.com                                                         
Coki - coki@gmail.com                                                           
Prowowo - prowowo@gmail.com                                                     
Habibi - habibi@gmail.com                                                       
Khofidinia - khofidinia@gmail.com                                               
Marquez - marquez@gmail.com                                                     
Daniel - daniel@gmail.com                                                       
Alya - alya@gmail.com                                                           

CONCAT                                                                          
--------------------------------------------------------------------------------
Wowo - wowo@gmail.com                                                           
Leo - leo@gmail.com                                                             
Yono - yono@gmail.com                                                           
Yatno - Yatno@gmail.com                                                         

15 rows selected.

SQL> SELECT nama,
  2  LENGTH(nama) AS jumlah_huruf FROM mahasiswa;

NAMA                           JUMLAH_HURUF                                     
------------------------------ ------------                                     
Joko                                      4                                     
Dhani                                     5                                     
Dono                                      4                                     
Yanti                                     5                                     
Coki                                      4                                     
Prowowo                                   7                                     
Habibi                                    6                                     
Khofidinia                               10                                     
Marquez                                   7                                     
Daniel                                    6                                     
Alya                                      4                                     

NAMA                           JUMLAH_HURUF                                     
------------------------------ ------------                                     
Wowo                                      4                                     
Leo                                       3                                     
Yono                                      4                                     
Yatno                                     5                                     

15 rows selected.

SQL> SELECT nama,
  2  SUSTR(nama, 1, 3)AS nama_singkatan
  3  FROM mahasiswa;
SUSTR(nama, 1, 3)AS nama_singkatan
*
ERROR at line 2:
ORA-00904: "SUSTR": invalid identifier 


SQL> SELECT nama,
  2  SUBSTR(nama, 1, 3)AS nama_singkatan
  3  FROM mahasiswa;

NAMA                           NAMA_SINGKAT                                     
------------------------------ ------------                                     
Joko                           Jok                                              
Dhani                          Dha                                              
Dono                           Don                                              
Yanti                          Yan                                              
Coki                           Cok                                              
Prowowo                        Pro                                              
Habibi                         Hab                                              
Khofidinia                     Kho                                              
Marquez                        Mar                                              
Daniel                         Dan                                              
Alya                           Aly                                              

NAMA                           NAMA_SINGKAT                                     
------------------------------ ------------                                     
Wowo                           Wow                                              
Leo                            Leo                                              
Yono                           Yon                                              
Yatno                          Yat                                              

15 rows selected.

SQL> SELECT nama,
  2  LPAD(nama, 10, '-') AS kiri_nama,
  3  RPAD(nama, 10, '*') AS kanan_nama
  4  FROM mahasiswa;

NAMA                           KIRI_NAMA                                        
------------------------------ ----------------------------------------         
KANAN_NAMA                                                                      
----------------------------------------                                        
Joko                           ------Joko                                       
Joko******                                                                      
                                                                                
Dhani                          -----Dhani                                       
Dhani*****                                                                      
                                                                                
Dono                           ------Dono                                       
Dono******                                                                      
                                                                                

NAMA                           KIRI_NAMA                                        
------------------------------ ----------------------------------------         
KANAN_NAMA                                                                      
----------------------------------------                                        
Yanti                          -----Yanti                                       
Yanti*****                                                                      
                                                                                
Coki                           ------Coki                                       
Coki******                                                                      
                                                                                
Prowowo                        ---Prowowo                                       
Prowowo***                                                                      
                                                                                

NAMA                           KIRI_NAMA                                        
------------------------------ ----------------------------------------         
KANAN_NAMA                                                                      
----------------------------------------                                        
Habibi                         ----Habibi                                       
Habibi****                                                                      
                                                                                
Khofidinia                     Khofidinia                                       
Khofidinia                                                                      
                                                                                
Marquez                        ---Marquez                                       
Marquez***                                                                      
                                                                                

NAMA                           KIRI_NAMA                                        
------------------------------ ----------------------------------------         
KANAN_NAMA                                                                      
----------------------------------------                                        
Daniel                         ----Daniel                                       
Daniel****                                                                      
                                                                                
Alya                           ------Alya                                       
Alya******                                                                      
                                                                                
Wowo                           ------Wowo                                       
Wowo******                                                                      
                                                                                

NAMA                           KIRI_NAMA                                        
------------------------------ ----------------------------------------         
KANAN_NAMA                                                                      
----------------------------------------                                        
Leo                            -------Leo                                       
Leo*******                                                                      
                                                                                
Yono                           ------Yono                                       
Yono******                                                                      
                                                                                
Yatno                          -----Yatno                                       
Yatno*****                                                                      
                                                                                

15 rows selected.

SQL> SELECT LTRIM ('  Dhani') AS hasil_LTRIM,
  2  RTRIM('Dhani  ') AS hasil_RTRIM FROM DUAL;

HASIL HASIL                                                                     
----- -----                                                                     
Dhani Dhani                                                                     

SQL> SELECT email, INSTR(email,'@') FROM mahasiswa;

EMAIL                                              INSTR(EMAIL,'@')             
-------------------------------------------------- ----------------             
joko@gmail.com                                                    5             
dhani@gmail.com                                                   6             
dono@gmail.com                                                    5             
yanti@gmail.com                                                   6             
coki@gmail.com                                                    5             
prowowo@gmail.com                                                 8             
habibi@gmail.com                                                  7             
khofidinia@gmail.com                                             11             
marquez@gmail.com                                                 8             
daniel@gmail.com                                                  7             
alya@gmail.com                                                    5             

EMAIL                                              INSTR(EMAIL,'@')             
-------------------------------------------------- ----------------             
wowo@gmail.com                                                    5             
leo@gmail.com                                                     4             
yono@gmail.com                                                    5             
Yatno@gmail.com                                                   6             

15 rows selected.

SQL> SELECT email, INSTR(email,'@') AS posisi_@ FROM mahasiswa;
SELECT email, INSTR(email,'@') AS posisi_@ FROM mahasiswa
                                         *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT email, INSTR(email,'@') AS posisi_at FROM mahasiswa;

EMAIL                                               POSISI_AT                   
-------------------------------------------------- ----------                   
joko@gmail.com                                              5                   
dhani@gmail.com                                             6                   
dono@gmail.com                                              5                   
yanti@gmail.com                                             6                   
coki@gmail.com                                              5                   
prowowo@gmail.com                                           8                   
habibi@gmail.com                                            7                   
khofidinia@gmail.com                                       11                   
marquez@gmail.com                                           8                   
daniel@gmail.com                                            7                   
alya@gmail.com                                              5                   

EMAIL                                               POSISI_AT                   
-------------------------------------------------- ----------                   
wowo@gmail.com                                              5                   
leo@gmail.com                                               4                   
yono@gmail.com                                              5                   
Yatno@gmail.com                                             6                   

15 rows selected.

SQL> SELECT email, REPLACE (email, 'gmail.com', 'telkomuniversity.ac.id') AS new_email FROM mahasiswa;

EMAIL                                                                           
--------------------------------------------------                              
NEW_EMAIL                                                                       
--------------------------------------------------------------------------------
joko@gmail.com                                                                  
joko@telkomuniversity.ac.id                                                     
                                                                                
dhani@gmail.com                                                                 
dhani@telkomuniversity.ac.id                                                    
                                                                                
dono@gmail.com                                                                  
dono@telkomuniversity.ac.id                                                     
                                                                                

EMAIL                                                                           
--------------------------------------------------                              
NEW_EMAIL                                                                       
--------------------------------------------------------------------------------
yanti@gmail.com                                                                 
yanti@telkomuniversity.ac.id                                                    
                                                                                
coki@gmail.com                                                                  
coki@telkomuniversity.ac.id                                                     
                                                                                
prowowo@gmail.com                                                               
prowowo@telkomuniversity.ac.id                                                  
                                                                                

EMAIL                                                                           
--------------------------------------------------                              
NEW_EMAIL                                                                       
--------------------------------------------------------------------------------
habibi@gmail.com                                                                
habibi@telkomuniversity.ac.id                                                   
                                                                                
khofidinia@gmail.com                                                            
khofidinia@telkomuniversity.ac.id                                               
                                                                                
marquez@gmail.com                                                               
marquez@telkomuniversity.ac.id                                                  
                                                                                

EMAIL                                                                           
--------------------------------------------------                              
NEW_EMAIL                                                                       
--------------------------------------------------------------------------------
daniel@gmail.com                                                                
daniel@telkomuniversity.ac.id                                                   
                                                                                
alya@gmail.com                                                                  
alya@telkomuniversity.ac.id                                                     
                                                                                
wowo@gmail.com                                                                  
wowo@telkomuniversity.ac.id                                                     
                                                                                

EMAIL                                                                           
--------------------------------------------------                              
NEW_EMAIL                                                                       
--------------------------------------------------------------------------------
leo@gmail.com                                                                   
leo@telkomuniversity.ac.id                                                      
                                                                                
yono@gmail.com                                                                  
yono@telkomuniversity.ac.id                                                     
                                                                                
Yatno@gmail.com                                                                 
Yatno@telkomuniversity.ac.id                                                    
                                                                                

15 rows selected.

SQL> SELECT tanggal_lahir,
  2  TO_CHAR(tanggal_lahir, 'MM-MON-MONTH') FROM mahasiswa;

TANGGAL_L TO_CHAR(TANGGAL_LAHIR,'MM-MON-MONTH')                                 
--------- ----------------------------------------------------                  
04-NOV-05 11-NOV-NOVEMBER                                                       
20-MAY-06 05-MAY-MAY                                                            
12-APR-04 04-APR-APRIL                                                          
23-AUG-05 08-AUG-AUGUST                                                         
01-MAR-03 03-MAR-MARCH                                                          
07-JUL-07 07-JUL-JULY                                                           
19-DEC-02 12-DEC-DECEMBER                                                       
01-MAR-06 03-MAR-MARCH                                                          
01-MAR-00 03-MAR-MARCH                                                          
10-MAY-03 05-MAY-MAY                                                            
26-SEP-04 09-SEP-SEPTEMBER                                                      

TANGGAL_L TO_CHAR(TANGGAL_LAHIR,'MM-MON-MONTH')                                 
--------- ----------------------------------------------------                  
17-DEC-04 12-DEC-DECEMBER                                                       
16-NOV-03 11-NOV-NOVEMBER                                                       
12-FEB-01 02-FEB-FEBRUARY                                                       
11-JUL-01 07-JUL-JULY                                                           

15 rows selected.

SQL> TO_CHAR(tanggal_lahir, 'DD-DY') AS hari FROM mahasiswa;
SP2-0734: unknown command beginning "TO_CHAR(ta..." - rest of line ignored.
SQL> TO_CHAR(tanggal_lahir, 'DD-DY') FROM mahasiswa;
SP2-0734: unknown command beginning "TO_CHAR(ta..." - rest of line ignored.
SQL> SELECT tanggal_lahir,
  2  TO_CHAR(tanggal_lahir, 'DD-DY') AS hari FROM mahasiswa;

TANGGAL_L HARI                                                                  
--------- ---------------                                                       
04-NOV-05 04-FRI                                                                
20-MAY-06 20-SAT                                                                
12-APR-04 12-MON                                                                
23-AUG-05 23-TUE                                                                
01-MAR-03 01-SAT                                                                
07-JUL-07 07-SAT                                                                
19-DEC-02 19-THU                                                                
01-MAR-06 01-WED                                                                
01-MAR-00 01-WED                                                                
10-MAY-03 10-SAT                                                                
26-SEP-04 26-SUN                                                                

TANGGAL_L HARI                                                                  
--------- ---------------                                                       
17-DEC-04 17-FRI                                                                
16-NOV-03 16-SUN                                                                
12-FEB-01 12-MON                                                                
11-JUL-01 11-WED                                                                

15 rows selected.

SQL> SELECT tanggal_lahir,
  2  TO_CHAR(tanggal_lahir, 'RR-YY-YYYY') AS Tahun FROM mahasiswa;

TANGGAL_L TAHUN                                                                 
--------- ----------                                                            
04-NOV-05 05-05-2005                                                            
20-MAY-06 06-06-2006                                                            
12-APR-04 04-04-2004                                                            
23-AUG-05 05-05-2005                                                            
01-MAR-03 03-03-2003                                                            
07-JUL-07 07-07-2007                                                            
19-DEC-02 02-02-2002                                                            
01-MAR-06 06-06-2006                                                            
01-MAR-00 00-00-2000                                                            
10-MAY-03 03-03-2003                                                            
26-SEP-04 04-04-2004                                                            

TANGGAL_L TAHUN                                                                 
--------- ----------                                                            
17-DEC-04 04-04-2004                                                            
16-NOV-03 03-03-2003                                                            
12-FEB-01 01-01-2001                                                            
11-JUL-01 01-01-2001                                                            

15 rows selected.

SQL> SELECT tanggal_lahir,
  2  TO_CHAR(tanggal_lahir, 'DD-MM-YYYY') AS tanggalLahir FROM mahasiswa;

TANGGAL_L TANGGALLAH                                                            
--------- ----------                                                            
04-NOV-05 04-11-2005                                                            
20-MAY-06 20-05-2006                                                            
12-APR-04 12-04-2004                                                            
23-AUG-05 23-08-2005                                                            
01-MAR-03 01-03-2003                                                            
07-JUL-07 07-07-2007                                                            
19-DEC-02 19-12-2002                                                            
01-MAR-06 01-03-2006                                                            
01-MAR-00 01-03-2000                                                            
10-MAY-03 10-05-2003                                                            
26-SEP-04 26-09-2004                                                            

TANGGAL_L TANGGALLAH                                                            
--------- ----------                                                            
17-DEC-04 17-12-2004                                                            
16-NOV-03 16-11-2003                                                            
12-FEB-01 12-02-2001                                                            
11-JUL-01 11-07-2001                                                            

15 rows selected.

SQL> SELECT tanggal_lahir,
  2  TO_CHAR(tanggal_lahir, 'Day, DD-MON-YYYY') AS tanggalLahir FROM mahasiswa;

TANGGAL_L TANGGALLAHIR                                                          
--------- ----------------------------------------------------------            
04-NOV-05 Friday   , 04-NOV-2005                                                
20-MAY-06 Saturday , 20-MAY-2006                                                
12-APR-04 Monday   , 12-APR-2004                                                
23-AUG-05 Tuesday  , 23-AUG-2005                                                
01-MAR-03 Saturday , 01-MAR-2003                                                
07-JUL-07 Saturday , 07-JUL-2007                                                
19-DEC-02 Thursday , 19-DEC-2002                                                
01-MAR-06 Wednesday, 01-MAR-2006                                                
01-MAR-00 Wednesday, 01-MAR-2000                                                
10-MAY-03 Saturday , 10-MAY-2003                                                
26-SEP-04 Sunday   , 26-SEP-2004                                                

TANGGAL_L TANGGALLAHIR                                                          
--------- ----------------------------------------------------------            
17-DEC-04 Friday   , 17-DEC-2004                                                
16-NOV-03 Sunday   , 16-NOV-2003                                                
12-FEB-01 Monday   , 12-FEB-2001                                                
11-JUL-01 Wednesday, 11-JUL-2001                                                

15 rows selected.

SQL> SELECT nama,
  2  TO_CHAR(tanggal_lahir, 'HH24:MI:SS'),
  3  TO_CHAR(tanggal_lahir, 'HH:MI:SS AM') FROM mahasiswa;

NAMA                           TO_CHAR( TO_CHAR(TAN                             
------------------------------ -------- -----------                             
Joko                           00:00:00 12:00:00 AM                             
Dhani                          00:00:00 12:00:00 AM                             
Dono                           00:00:00 12:00:00 AM                             
Yanti                          00:00:00 12:00:00 AM                             
Coki                           00:00:00 12:00:00 AM                             
Prowowo                        00:00:00 12:00:00 AM                             
Habibi                         00:00:00 12:00:00 AM                             
Khofidinia                     00:00:00 12:00:00 AM                             
Marquez                        00:00:00 12:00:00 AM                             
Daniel                         00:00:00 12:00:00 AM                             
Alya                           00:00:00 12:00:00 AM                             

NAMA                           TO_CHAR( TO_CHAR(TAN                             
------------------------------ -------- -----------                             
Wowo                           00:00:00 12:00:00 AM                             
Leo                            00:00:00 12:00:00 AM                             
Yono                           00:00:00 12:00:00 AM                             
Yatno                          00:00:00 12:00:00 AM                             

15 rows selected.

SQL> SELECT SYSDATE FROM DUAL;

SYSDATE                                                                         
---------                                                                       
16-MAR-26                                                                       

SQL> SELECT SYSDATE,
  2  TO_CHAR(SYSDATE, 'HH24:MI:SS') AS formatJam_24,
  3  TO_CHAR(SYSDATE, 'HH:MI:SS AM') AS formatJam_12 FROM DUAL;

SYSDATE   FORMATJA FORMATJAM_1                                                  
--------- -------- -----------                                                  
16-MAR-26 01:38:42 01:38:42 AM                                                  

SQL> SELECT NAMA, tanggal_lahir,
  2  ADD_MONTHS(tanggal_lahir, 4) AS 4bulanSetelahLahir FROM mahasiswa;
ADD_MONTHS(tanggal_lahir, 4) AS 4bulanSetelahLahir FROM mahasiswa
                                *
ERROR at line 2:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT nama, tanggal_lahir,
  2  ADD_MONTHS(tanggal_lahir, 4) AS 4bulanSetelahLahir FROM mahasiswa;
ADD_MONTHS(tanggal_lahir, 4) AS 4bulanSetelahLahir FROM mahasiswa
                                *
ERROR at line 2:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT NAMA, tanggal_lahir,
  2  ADD_MONTHS(tanggal_lahir, 4) AS empatbulanSetelahLahir FROM mahasiswa;

NAMA                           TANGGAL_L EMPATBULA                              
------------------------------ --------- ---------                              
Joko                           04-NOV-05 04-MAR-06                              
Dhani                          20-MAY-06 20-SEP-06                              
Dono                           12-APR-04 12-AUG-04                              
Yanti                          23-AUG-05 23-DEC-05                              
Coki                           01-MAR-03 01-JUL-03                              
Prowowo                        07-JUL-07 07-NOV-07                              
Habibi                         19-DEC-02 19-APR-03                              
Khofidinia                     01-MAR-06 01-JUL-06                              
Marquez                        01-MAR-00 01-JUL-00                              
Daniel                         10-MAY-03 10-SEP-03                              
Alya                           26-SEP-04 26-JAN-05                                                          
Wowo                           17-DEC-04 17-APR-05                              
Leo                            16-NOV-03 16-MAR-04                              
Yono                           12-FEB-01 12-JUN-01                              
Yatno                          11-JUL-01 11-NOV-01                              

15 rows selected.

SQL> SELECT nama, tanggal_lahir,
  2  LAST_DAY(tanggal_lahir) AS tanggalTerakhirBulan FROM mahasiswa;

NAMA                           TANGGAL_L TANGGALTE                              
------------------------------ --------- ---------                              
Joko                           04-NOV-05 30-NOV-05                              
Dhani                          20-MAY-06 31-MAY-06                              
Dono                           12-APR-04 30-APR-04                              
Yanti                          23-AUG-05 31-AUG-05                              
Coki                           01-MAR-03 31-MAR-03                              
Prowowo                        07-JUL-07 31-JUL-07                              
Habibi                         19-DEC-02 31-DEC-02                              
Khofidinia                     01-MAR-06 31-MAR-06                              
Marquez                        01-MAR-00 31-MAR-00                              
Daniel                         10-MAY-03 31-MAY-03                              
Alya                           26-SEP-04 30-SEP-04                                                         
Wowo                           17-DEC-04 31-DEC-04                              
Leo                            16-NOV-03 30-NOV-03                              
Yono                           12-FEB-01 28-FEB-01                              
Yatno                          11-JUL-01 31-JUL-01                              

15 rows selected.

SQL>  SELECT nama, tanggal_lahir,
  2  NEXT_DAY(tanggal_lahir, 'Sunday') AS mingguBerikutnya FROM mahasiswa;

NAMA                           TANGGAL_L MINGGUBER                              
------------------------------ --------- ---------                              
Joko                           04-NOV-05 06-NOV-05                              
Dhani                          20-MAY-06 21-MAY-06                              
Dono                           12-APR-04 18-APR-04                              
Yanti                          23-AUG-05 28-AUG-05                              
Coki                           01-MAR-03 02-MAR-03                              
Prowowo                        07-JUL-07 08-JUL-07                              
Habibi                         19-DEC-02 22-DEC-02                              
Khofidinia                     01-MAR-06 05-MAR-06                              
Marquez                        01-MAR-00 05-MAR-00                              
Daniel                         10-MAY-03 11-MAY-03                              
Alya                           26-SEP-04 03-OCT-04                                                      
Wowo                           17-DEC-04 19-DEC-04                              
Leo                            16-NOV-03 23-NOV-03                              
Yono                           12-FEB-01 18-FEB-01                              
Yatno                          11-JUL-01 15-JUL-01                              

15 rows selected.

SQL> SELECT nama, tanggal_lahir,
  2  MONTHS_BEETWENanggal
  3  
SQL> SELECT nama,
  2  MONTHS_BETWEEN(SYSDATE, tanggal_lahir) AS selisih_bulan FROM mahasiswa;

NAMA                           SELISIH_BULAN                                    
------------------------------ -------------                                    
Joko                               244.38948                                    
Dhani                             237.873351                                    
Dono                              263.131415                                    
Yanti                             246.776577                                    
Coki                              276.486254                                    
Prowowo                           224.292706                                    
Habibi                            278.905609                                    
Khofidinia                        240.486254                                    
Marquez                           312.486254                                    
Daniel                            274.195932                                    
Alya                              257.679802                                    -                                    
Wowo                              254.970125                                    
Leo                                      268                                    
Yono                              301.131415                                    
Yatno                             296.163673                                    

15 rows selected.

SQL> SELECT nama,
  2  
SQL> 
SQL> SELECT nama, tanggal_lahir,
  2  ROUND(tanggal_lahir, 'MONTH') AS pembulatan_bulan,
  3  ROUND(tanggal_lahir, 'YEAR') AS pembulatan_tahun FROM mahasiswa;

NAMA                           TANGGAL_L PEMBULATA PEMBULATA                    
------------------------------ --------- --------- ---------                    
Joko                           04-NOV-05 01-NOV-05 01-JAN-06                    
Dhani                          20-MAY-06 01-JUN-06 01-JAN-06                    
Dono                           12-APR-04 01-APR-04 01-JAN-04                    
Yanti                          23-AUG-05 01-SEP-05 01-JAN-06                    
Coki                           01-MAR-03 01-MAR-03 01-JAN-03                    
Prowowo                        07-JUL-07 01-JUL-07 01-JAN-08                    
Habibi                         19-DEC-02 01-JAN-03 01-JAN-03                    
Khofidinia                     01-MAR-06 01-MAR-06 01-JAN-06                    
Marquez                        01-MAR-00 01-MAR-00 01-JAN-00                    
Daniel                         10-MAY-03 01-MAY-03 01-JAN-03                    
Alya                           26-SEP-04 01-OCT-04 01-JAN-05                                     
Wowo                           17-DEC-04 01-JAN-05 01-JAN-05                    
Leo                            16-NOV-03 01-DEC-03 01-JAN-04                    
Yono                           12-FEB-01 01-FEB-01 01-JAN-01                    
Yatno                          11-JUL-01 01-JUL-01 01-JAN-02                    

15 rows selected.

SQL> SELECT TO_NUMBER('3000') + 1000 AS hasil FROM DUAL;

     HASIL                                                                      
----------                                                                      
      4000                                                                      

SQL> SELECT TO_CHAR('Day, DD Month YYYY') AS tanggal FROM DUAL;

TANGGAL                                                                         
------------------                                                              
Day, DD Month YYYY                                                              

SQL> SELECT nama TO_CHAR('Day, DD Month YYYY') AS tanggal FROM mahasiswa;
SELECT nama TO_CHAR('Day, DD Month YYYY') AS tanggal FROM mahasiswa
                   *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT nama TO_CHAR(tanggal_lahir, 'Day, DD Month YYYY') AS tanggal FROM mahasiswa;
SELECT nama TO_CHAR(tanggal_lahir, 'Day, DD Month YYYY') AS tanggal FROM mahasiswa
                   *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT nama, TO_CHAR(tanggal_lahir, 'Day, DD Month YYYY') AS tanggal FROM mahasiswa;

NAMA                                                                            
------------------------------                                                  
TANGGAL                                                                         
--------------------------------------------------------------------------------
Joko                                                                            
Friday   , 04 November  2005                                                    
                                                                                
Dhani                                                                           
Saturday , 20 May       2006                                                    
                                                                                
Dono                                                                            
Monday   , 12 April     2004                                                    
                                                                                

NAMA                                                                            
------------------------------                                                  
TANGGAL                                                                         
--------------------------------------------------------------------------------
Yanti                                                                           
Tuesday  , 23 August    2005                                                    
                                                                                
Coki                                                                            
Saturday , 01 March     2003                                                    
                                                                                
Prowowo                                                                         
Saturday , 07 July      2007                                                    
                                                                                

NAMA                                                                            
------------------------------                                                  
TANGGAL                                                                         
--------------------------------------------------------------------------------
Habibi                                                                          
Thursday , 19 December  2002                                                    
                                                                                
Khofidinia                                                                      
Wednesday, 01 March     2006                                                    
                                                                                
Marquez                                                                         
Wednesday, 01 March     2000                                                    
                                                                                

NAMA                                                                            
------------------------------                                                  
TANGGAL                                                                         
--------------------------------------------------------------------------------
Daniel                                                                          
Saturday , 10 May       2003                                                    
                                                                                
Alya                                                                            
Sunday   , 26 September 2004                                                    
                                                                                
Wowo                                                                            
Friday   , 17 December  2004                                                    
                                                                                

NAMA                                                                            
------------------------------                                                  
TANGGAL                                                                         
--------------------------------------------------------------------------------
Leo                                                                             
Sunday   , 16 November  2003                                                    
                                                                                
Yono                                                                            
Monday   , 12 February  2001                                                    
                                                                                
Yatno                                                                           
Wednesday, 11 July      2001                                                    
                                                                                

15 rows selected.

SQL> SELECT nama,
  2  TO_CHAR(tinggi_badan, '999') AS tinggi_teks FROM mahasiswa;

NAMA                           TING                                             
------------------------------ ----                                             
Joko                            168                                             
Dhani                           177                                             
Dono                            170                                             
Yanti                           165                                             
Coki                            172                                             
Prowowo                         169                                             
Habibi                          178                                             
Khofidinia                      160                                             
Marquez                         162                                             
Daniel                          180                                             
Alya                            154                                             

NAMA                           TING                                             
------------------------------ ----                                             
Wowo                            165                                             
Leo                             166                                             
Yono                            166                                             
Yatno                           188                                             

15 rows selected.

SQL> SELECT nama,
  2  TO_CHAR(tinggi_badan, '99') AS tinggi_teks FROM mahasiswa;

NAMA                           TIN                                              
------------------------------ ---                                              
Joko                           ###                                              
Dhani                          ###                                              
Dono                           ###                                              
Yanti                          ###                                              
Coki                           ###                                              
Prowowo                        ###                                              
Habibi                         ###                                              
Khofidinia                     ###                                              
Marquez                        ###                                              
Daniel                         ###                                              
Alya                           ###                                              

NAMA                           TIN                                              
------------------------------ ---                                              
Wowo                           ###                                              
Leo                            ###                                              
Yono                           ###                                              
Yatno                          ###                                              

15 rows selected.

SQL> SELECT TO_DATE('10-05-06', 'Day, DD month YYY') AS hari_ultahku FROM DUAL;
SELECT TO_DATE('10-05-06', 'Day, DD month YYY') AS hari_ultahku FROM DUAL
               *
ERROR at line 1:
ORA-01846: not a valid day of the week 


SQL> SELECT TO_DATE('10-05-2006', 'Day, DD month YYY') AS hari_ultahku FROM DUAL;
SELECT TO_DATE('10-05-2006', 'Day, DD month YYY') AS hari_ultahku FROM DUAL
               *
ERROR at line 1:
ORA-01846: not a valid day of the week 


SQL> SELECT TO_DATE('10-05-2006', 'DD-MM-YYYY') AS hari_ultahku FROM DUAL;

HARI_ULTA                                                                       
---------                                                                       
10-MAY-06                                                                       

SQL> SELECT ABS(-100) FROM DUAL;

 ABS(-100)                                                                      
----------                                                                      
       100                                                                      

SQL> SELECT ABS(tinggi_badan-100) FROM mahasiswa;

ABS(TINGGI_BADAN-100)                                                           
---------------------                                                           
                   68                                                           
                   77                                                           
                   70                                                           
                   65                                                           
                   72                                                           
                   69                                                           
                   78                                                           
                   60                                                           
                   62                                                           
                   80                                                           
                   54                                                           

ABS(TINGGI_BADAN-100)                                                           
---------------------                                                           
                   65                                                           
                   66                                                           
                   66                                                           
                   88                                                           

15 rows selected.

SQL> SELECT nama, ABS(tinggi_badan-100) AS total_setelah_minus FROM mahasiswa;

NAMA                           TOTAL_SETELAH_MINUS                              
------------------------------ -------------------                              
Joko                                            68                              
Dhani                                           77                              
Dono                                            70                              
Yanti                                           65                              
Coki                                            72                              
Prowowo                                         69                              
Habibi                                          78                              
Khofidinia                                      60                              
Marquez                                         62                              
Daniel                                          80                              
Alya                                            54                              

NAMA                           TOTAL_SETELAH_MINUS                              
------------------------------ -------------------                              
Wowo                                            65                              
Leo                                             66                              
Yono                                            66                              
Yatno                                           88                              

15 rows selected.

SQL> SELECT nama, MOD(berat_badan, 2) AS sisa_bagi_dua FROM mahasiswa;

NAMA                           SISA_BAGI_DUA                                    
------------------------------ -------------                                    
Joko                                       0                                    
Dhani                                      0                                    
Dono                                       1                                    
Yanti                                      1                                    
Coki                                       1                                    
Prowowo                                    1                                    
Habibi                                     0                                    
Khofidinia                                 1                                    
Marquez                                    0                                    
Daniel                                     0                                    
Alya                                       1                                    

NAMA                           SISA_BAGI_DUA                                    
------------------------------ -------------                                    
Wowo                                       1                                    
Leo                                        1                                    
Yono                                       1                                    
Yatno                                      1                                    

15 rows selected.

SQL> SELECT nama, FLOOR(berat_badan, 2) AS floor FROM mahasiswa;
SELECT nama, FLOOR(berat_badan, 2) AS floor FROM mahasiswa
             *
ERROR at line 1:
ORA-00909: invalid number of arguments 


SQL> SELECT nama, FLOOR(berat_badan / 2) AS floor FROM mahasiswa;

NAMA                                FLOOR                                       
------------------------------ ----------                                       
Joko                                   29                                       
Dhani                                  30                                       
Dono                                   36                                       
Yanti                                  26                                       
Coki                                   30                                       
Prowowo                                31                                       
Habibi                                 40                                       
Khofidinia                             25                                       
Marquez                                33                                       
Daniel                                 36                                       
Alya                                   24                                       

NAMA                                FLOOR                                       
------------------------------ ----------                                       
Wowo                                   32                                       
Leo                                    31                                       
Yono                                   27                                       
Yatno                                  38                                       

15 rows selected.

SQL> SELECT nama, FLOOR(berat_badan / 2) AS hasil_bb FROM mahasiswa;

NAMA                             HASIL_BB                                       
------------------------------ ----------                                       
Joko                                   29                                       
Dhani                                  30                                       
Dono                                   36                                       
Yanti                                  26                                       
Coki                                   30                                       
Prowowo                                31                                       
Habibi                                 40                                       
Khofidinia                             25                                       
Marquez                                33                                       
Daniel                                 36                                       
Alya                                   24                                       

NAMA                             HASIL_BB                                       
------------------------------ ----------                                       
Wowo                                   32                                       
Leo                                    31                                       
Yono                                   27                                       
Yatno                                  38                                       

15 rows selected.

SQL> SELECT nama, CEIL(berat_badan / 2) AS hasil_bb FROM mahasiswa;

NAMA                             HASIL_BB                                       
------------------------------ ----------                                       
Joko                                   29                                       
Dhani                                  30                                       
Dono                                   37                                       
Yanti                                  27                                       
Coki                                   31                                       
Prowowo                                32                                       
Habibi                                 40                                       
Khofidinia                             26                                       
Marquez                                33                                       
Daniel                                 36                                       
Alya                                   25                                       

NAMA                             HASIL_BB                                       
------------------------------ ----------                                       
Wowo                                   33                                       
Leo                                    32                                       
Yono                                   28                                       
Yatno                                  39                                       

15 rows selected.

SQL> SELECT nama, ROUND(berat_badan / 2) AS hasil_bb FROM mahasiswa;

NAMA                             HASIL_BB                                       
------------------------------ ----------                                       
Joko                                   29                                       
Dhani                                  30                                       
Dono                                   37                                       
Yanti                                  27                                       
Coki                                   31                                       
Prowowo                                32                                       
Habibi                                 40                                       
Khofidinia                             26                                       
Marquez                                33                                       
Daniel                                 36                                       
Alya                                   25                                       

NAMA                             HASIL_BB                                       
------------------------------ ----------                                       
Wowo                                   33                                       
Leo                                    32                                       
Yono                                   28                                       
Yatno                                  39                                       

15 rows selected.

SQL> SELECT nama, ROUND(berat_badan / 2, 3) AS hasil_bb FROM mahasiswa;

NAMA                             HASIL_BB                                       
------------------------------ ----------                                       
Joko                                   29                                       
Dhani                                  30                                       
Dono                                 36.5                                       
Yanti                                26.5                                       
Coki                                 30.5                                       
Prowowo                              31.5                                       
Habibi                                 40                                       
Khofidinia                           25.5                                       
Marquez                                33                                       
Daniel                                 36                                       
Alya                                 24.5                                       

NAMA                             HASIL_BB                                       
------------------------------ ----------                                       
Wowo                                 32.5                                       
Leo                                  31.5                                       
Yono                                 27.5                                       
Yatno                                38.5                                       

15 rows selected.

SQL> SELECT nama, ROUND(tinggi_badan, 3) AS tinggi_round FROM mahasiswa;

NAMA                           TINGGI_ROUND                                     
------------------------------ ------------                                     
Joko                                    168                                     
Dhani                                   177                                     
Dono                                    170                                     
Yanti                                   165                                     
Coki                                    172                                     
Prowowo                                 169                                     
Habibi                                  178                                     
Khofidinia                              160                                     
Marquez                                 162                                     
Daniel                                  180                                     
Alya                                    154                                     

NAMA                           TINGGI_ROUND                                     
------------------------------ ------------                                     
Wowo                                    165                                     
Leo                                     166                                     
Yono                                    166                                     
Yatno                                   188                                     

15 rows selected.

SQL> SELECT nama, ROUND(tinggi_badan/ 3, 2) AS tinggi_round FROM mahasiswa;

NAMA                           TINGGI_ROUND                                     
------------------------------ ------------                                     
Joko                                     56                                     
Dhani                                    59                                     
Dono                                  56.67                                     
Yanti                                    55                                     
Coki                                  57.33                                     
Prowowo                               56.33                                     
Habibi                                59.33                                     
Khofidinia                            53.33                                     
Marquez                                  54                                     
Daniel                                   60                                     
Alya                                  51.33                                     

NAMA                           TINGGI_ROUND                                     
------------------------------ ------------                                     
Wowo                                     55                                     
Leo                                   55.33                                     
Yono                                  55.33                                     
Yatno                                 62.67                                     

15 rows selected.

SQL> SELECT nama, POWER(tinggi_badan, 2) AS tinggi_kuadrat FROM mahasiswa;

NAMA                           TINGGI_KUADRAT                                   
------------------------------ --------------                                   
Joko                                    28224                                   
Dhani                                   31329                                   
Dono                                    28900                                   
Yanti                                   27225                                   
Coki                                    29584                                   
Prowowo                                 28561                                   
Habibi                                  31684                                   
Khofidinia                              25600                                   
Marquez                                 26244                                   
Daniel                                  32400                                   
Alya                                    23716                                   

NAMA                           TINGGI_KUADRAT                                   
------------------------------ --------------                                   
Wowo                                    27225                                   
Leo                                     27556                                   
Yono                                    27556                                   
Yatno                                   35344                                   

15 rows selected.

SQL> SPOOL OFF
