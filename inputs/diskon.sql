-- Lihat Data
SELECT * FROM Diskon;

INSERT INTO Diskon (id_diskon, nama_promo, tipe_promo, presentase_diskon, tanggal_mulai, tanggal_berakhir) VALUES
('D001', 'Diskon 10%', 'promo', 10.00, '2025-05-01', '2025-05-10'),
('D002', 'Promo Akhir Pekan', 'event', 15.00, '2025-05-05', '2025-05-07');