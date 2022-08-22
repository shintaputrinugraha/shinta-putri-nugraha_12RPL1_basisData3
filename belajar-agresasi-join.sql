SELECT tempat_lahir,COUNT(tempat_lahir) AS tempat_lahir
FROM siswa
GROUP BY tempat_lahir;

SELECT jk, SUM(nilai) AS jumlah_nilai
FROM siswa
GROUP BY jk;

SELECT jk, AVG(nilai) AS rata_rata
FROM siswa
GROUP BY jk;

CREATE TABLE pinjambuku(
    id_pinjam INT(11),
    nis CHAR(8),
    nama_buku VARCHAR(100),
    PRIMARY KEY (nis));

INSERT INTO pinjambuku(id_pinjam,nis,nama_buku) VALUES
('1','12002429','BASIS DATA'),('2','12002439','BULAN'),('3','12002540','BASIS DATA'),('4','12002540','PEMROWEB'),('5','12003010','PBO'),('6','12004000'.'DILAN 1991');

SELECT siswa.,pinjambuku.
FROM siswa
LEFT JOIN pinjambuku
ON siswa.nis = pinjambuku.nis
WHERE pinjambuku.nis IS NULL;

SELECT nama,kelas,MIN(nilai)
FROM siswa;

SELECT tempat_lahir,MIN(nilai)
FROM siswa
GROUP BY tempat_lahir;

SELECT siswa.,pinjambuku.
FROM siswa
JOIN pinjambuku
ON siswa.nis=pinjambuku.nis;

SELECT siswa.,pinjambuku.
FROM siswa
RIGHT JOIN pinjambuku
ON siswa.nis=pinjambuku.nis;

SELECT siswa.,pinjambuku.
FROM siswa
LEFT JOIN pinjambuku
ON siswa.nis=pinjambuku.nis;

SELECT nama,kelas,MAX(nilai)
FROM siswa;

SELECT tempat_lahir,MAX(nilai)
FROM siswa
GROUP BY tempat_lahir;