-- Lihat Data
SELECT * FROM Pesanan;

INSERT INTO Pesanan (id_pesanan, id_pelanggan, tanggal_pesan, waktu_pesan, total_harga, metode_bayar, status_pesanan) VALUES
('P001', 'C001', '2025-05-01', '12:00:00', 80000.00, 'Cash', 'Selesai'),
('P002', 'C002', '2025-05-02', '13:00:00', 45000.00, 'QRIS', 'Selesai'),
('P003', 'C004', '2025-05-03', '14:00:00', 15000.00, 'Cash', 'Batal');