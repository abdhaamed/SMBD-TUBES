-- Lihat Data
SELECT * FROM Bahan_Baku;

INSERT INTO Bahan_Baku (id_bahan_baku, id_pemasok, nama_bahan_baku, kategori_bahan_baku, stok_saat_ini, satuan_berat) VALUES
('BB001', 'S001', 'Daging Ayam', 'protein', 100.00, 'kg'),
('BB002', 'S001', 'Nasi Putih', 'karbohidrat', 200.00, 'kg'),
('BB003', 'S002', 'Alpukat', 'buah', 50.00, 'kg'),
('BB004', 'S002', 'Air Mineral', 'minuman', 300.00, 'liter');