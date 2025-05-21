-- Lihat Data
SELECT * FROM Pelanggan;


CREATE TABLE Pelanggan (
    id_pelanggan VARCHAR(20) PRIMARY KEY,
    nama_lengkap VARCHAR(100) NOT NULL,
    nomor_telepon VARCHAR(20),
    email VARCHAR(100)
);


-- Testing Inputs
INSERT INTO Pelanggan (id_pelanggan, nama_lengkap, nomor_telepon, email)
VALUES ('C1', 'Fara Utami', '08123456789', 'fara@example.com');