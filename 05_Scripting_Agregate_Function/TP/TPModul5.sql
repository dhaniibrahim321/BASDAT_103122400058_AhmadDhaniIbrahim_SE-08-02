DROP TABLE theater CASCADE CONSTRAINTS;
DROP TABLE film CASCADE CONSTRAINTS;
DROP TABLE kursi CASCADE CONSTRAINTS;
DROP TABLE jadwal CASCADE CONSTRAINTS;
DROP TABLE member CASCADE CONSTRAINTS;
DROP TABLE transkaksi CASCADE CONSTRAINTS;


CREATE TABLE theater (
    id_theater   NUMBER(3) PRIMARY KEY,
    nama_theater VARCHAR2(20) NOT NULL,
    tipe_kelas   VARCHAR2(20),
    kapasitas    NUMBER(3),
    harga        NUMBER(10,2)
);


CREATE TABLE film (
    id_film      NUMBER(6) PRIMARY KEY,
    judul_film   VARCHAR2(100) NOT NULL,
    sinopsis     CLOB,
    mpaa_rating  VARCHAR2(10),
    durasi       VARCHAR2(20)
);


CREATE TABLE member (
    id_member     NUMBER(10) PRIMARY KEY,
    nama_member   VARCHAR2(50),
    tanggal_lahir DATE
);


CREATE TABLE kursi (
    id_kursi    NUMBER(10) PRIMARY KEY,
    id_theater  NUMBER(3) REFERENCES theater(id_theater),
    baris       CHAR(1),
    nomor       NUMBER(2)
);


CREATE TABLE jadwal (
    id_jadwal    NUMBER(10) PRIMARY KEY,
    id_film      NUMBER(6) REFERENCES film(id_film),
    id_theater   NUMBER(3) REFERENCES theater(id_theater),
    tgl_tayang   DATE,
    jam_mulai    VARCHAR2(5),
    jam_selesai  VARCHAR2(5)
);


CREATE TABLE transaksi (
    id_transaksi  NUMBER(10) PRIMARY KEY,
    id_jadwal     NUMBER(10) REFERENCES jadwal(id_jadwal),
    id_member     NUMBER(10) REFERENCES member(id_member),
    id_kursi      NUMBER(10) REFERENCES kursi(id_kursi),
    tgl_transaksi DATE DEFAULT SYSDATE
)


INSERT INTO theater VALUES (1, 'Theater 1', 'Reguler', 10, 35000);
INSERT INTO theater VALUES (2, 'Theater 2', 'Reguler', 20, 35000);
INSERT INTO theater VALUES (3, 'Theater 3', 'VVIP', 30, 60000);

INSERT INTO film VALUES (1, 'Spider-Man: Far From Home', 'Peter Parker berurusan dengan Elementals...', 'PG-13', '129 min');
INSERT INTO film VALUES (2, 'Ambarukmo', 'Teror ambarukmo yang mengerikan.', 'PP-11', '120 min');
INSERT INTO film VALUES (3, 'Kisah cinta rusdi', 'Kisah cinta cik rusdi dengan imut sasimok .', 'JM-45', '200 min');



INSERT INTO member VALUES (10, 'Ahmad Dhani', TO_DATE('2005-12-15','YYYY-MM-DD'));
INSERT INTO member VALUES (11, 'Ibrahim', TO_DATE('2008-04-20','YYYY-MM-DD'));
INSERT INTO member VALUES (12, 'Fuad', TO_DATE('2003-05-10','YYYY-MM-DD'));



INSERT INTO kursi VALUES (101, 1, 'A', 1);
INSERT INTO kursi VALUES (102, 1, 'A', 2);
INSERT INTO kursi VALUES (201, 2, 'A', 1);
INSERT INTO kursi VALUES (301, 3, 'A', 1);


INSERT INTO jadwal VALUES (501, 1, 1, TO_DATE('2019-07-03','YYYY-MM-DD'), '12:30', '14:30');
INSERT INTO jadwal VALUES (502, 1, 2, TO_DATE('2019-07-03','YYYY-MM-DD'), '13:00', '15:00');
INSERT INTO jadwal VALUES (503, 1, 2, TO_DATE('2019-07-03','YYYY-MM-DD'), '15:00', '18:30');

SELECT * FROM jadwal;

INSERT INTO transaksi VALUES (1, 501, 10, 101, TO_DATE('2019-07-03','YYYY-MM-DD'));
INSERT INTO transaksi VALUES (2, 501, 10, 102, TO_DATE('2019-07-04','YYYY-MM-DD'));
INSERT INTO transaksi VALUES (3, 502, 10, 201, TO_DATE('2019-07-05','YYYY-MM-DD'));
INSERT INTO transaksi VALUES (4, 503, 10, 301, TO_DATE('2019-07-03','YYYY-MM-DD'));


SELECT COUNT(*) AS jumlah_film_tersedia FROM film;

SELECT COUNT(DISTINCT id_film) AS jumlah_film_diputar FROM jadwal;


SELECT id_member, COUNT(*) AS total_menonton 
FROM transaksi GROUP BY id_member
HAVING COUNT(*) > 2;


SELECT 
    m.id_member, 
    m.nama_member, 
    m.tanggal_lahir,
    COUNT(t.id_transaksi) AS jumlah_film_ditonton
FROM member m
LEFT JOIN transaksi t ON m.id_member = t.id_member
WHERE m.tanggal_lahir = (SELECT MAX(tanggal_lahir) FROM member)
GROUP BY m.id_member, m.nama_member, m.tanggal_lahir;


SELECT 
    TO_CHAR(tanggal_lahir, 'Month') AS bulan_lahir, 
    COUNT(*) AS jumlah_member
FROM member
GROUP BY TO_CHAR(tanggal_lahir, 'Month'), EXTRACT(MONTH FROM tanggal_lahir)
ORDER BY EXTRACT(MONTH FROM tanggal_lahir);


SELECT 
    f.judul_film, 
    COUNT(j.id_jadwal) AS total_jadwal
FROM film f
JOIN jadwal j ON f.id_film = j.id_film
GROUP BY f.judul_film;