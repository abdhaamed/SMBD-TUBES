-- ====================================
-- 1. TABEL PELANGGAN
-- ====================================
CREATE TABLE Pelanggan (
    id_pelanggan VARCHAR(10) PRIMARY KEY,
    nama_lengkap VARCHAR(100),
    nomor_telepon VARCHAR(20),
    email VARCHAR(100)
);

-- ====================================
-- 2. TABEL ANGGOTA
-- ====================================
CREATE TABLE Anggota (
    id_anggota VARCHAR(10) PRIMARY KEY,
    id_pelanggan VARCHAR(10),
    FOREIGN KEY (id_pelanggan) REFERENCES Pelanggan(id_pelanggan)
);

-- ====================================
-- 3. TABEL MEJA
-- ====================================
CREATE TABLE Meja (
    id_meja VARCHAR(10) PRIMARY KEY,
    kapasitas INT
);

-- ====================================
-- 4. TABEL MENU
-- ====================================
CREATE TABLE Menu (
    id_menu VARCHAR(10) PRIMARY KEY,
    nama_menu VARCHAR(100),
    kategori ENUM('makanan', 'minuman'),
    harga DECIMAL(10,2),
    ketersediaan BOOLEAN
);

-- ====================================
-- 5. TABEL PESANAN
-- ====================================
CREATE TABLE Pesanan (
    id_pesanan VARCHAR(10) PRIMARY KEY,
    id_pelanggan VARCHAR(10),
    tanggal_pesan DATE,
    waktu_pesan TIME,
    total_harga DECIMAL(10,2),
    metode_bayar VARCHAR(50),
    status_pesanan VARCHAR(50),
    FOREIGN KEY (id_pelanggan) REFERENCES Pelanggan(id_pelanggan)
);

-- ====================================
-- 6. TABEL DETAIL_PESANAN
-- ====================================
CREATE TABLE Detail_Pesanan (
    id_detail_pesanan VARCHAR(10) PRIMARY KEY,
    nomor_pemesanan VARCHAR(10),
    no_menu VARCHAR(10),
    jumlah_pesan INT,
    FOREIGN KEY (nomor_pemesanan) REFERENCES Pesanan(id_pesanan),
    FOREIGN KEY (no_menu) REFERENCES Menu(id_menu)
);

-- ====================================
-- 7. TABEL RESERVASI_MEJA
-- ====================================
CREATE TABLE Reservasi_Meja (
    id_reservasi VARCHAR(10) PRIMARY KEY,
    id_anggota VARCHAR(10),
    id_meja VARCHAR(10),
    tanggal_reservasi DATE,
    jam_reservasi TIME,
    FOREIGN KEY (id_anggota) REFERENCES Anggota(id_anggota),
    FOREIGN KEY (id_meja) REFERENCES Meja(id_meja)
);

-- ====================================
-- 8. TABEL DISKON
-- ====================================
CREATE TABLE Diskon (
    id_diskon VARCHAR(10) PRIMARY KEY,
    nama_promo VARCHAR(100),
    tipe_promo VARCHAR(50),
    presentase_diskon DECIMAL(5,2),
    tanggal_mulai DATE,
    tanggal_berakhir DATE
);

-- ====================================
-- 9. TABEL PEMASOK
-- ====================================
CREATE TABLE Pemasok (
    id_pemasok VARCHAR(10) PRIMARY KEY,
    nama_pemasok VARCHAR(100),
    kontak_pemasok VARCHAR(50),
    alamat_pemasok VARCHAR(255)
);

-- ====================================
-- 10. TABEL BAHAN_BAKU
-- ====================================
CREATE TABLE Bahan_Baku (
    id_bahan_baku VARCHAR(10) PRIMARY KEY,
    id_pemasok VARCHAR(10),
    nama_bahan_baku VARCHAR(100),
    kategori_bahan_baku VARCHAR(50),
    stok_saat_ini DECIMAL(10,2),
    satuan_berat VARCHAR(20),
    FOREIGN KEY (id_pemasok) REFERENCES Pemasok(id_pemasok)
);

-- ====================================
-- 11. TABEL PENGGUNAAN_BAHAN_BAKU
-- ====================================
CREATE TABLE Penggunaan_Bahan_Baku (
    id_penggunaan VARCHAR(10) PRIMARY KEY,
    id_bahan_baku VARCHAR(10),
    id_menu VARCHAR(10),
    FOREIGN KEY (id_bahan_baku) REFERENCES Bahan_Baku(id_bahan_baku),
    FOREIGN KEY (id_menu) REFERENCES Menu(id_menu)
);

-- ====================================
-- 12. TABEL TRANSAKSI_DISKON
-- ====================================
CREATE TABLE Transaksi_Diskon (
    id_order_diskon VARCHAR(10) PRIMARY KEY,
    id_diskon VARCHAR(10),
    id_transaksi_selesai VARCHAR(10),
    FOREIGN KEY (id_diskon) REFERENCES Diskon(id_diskon),
    FOREIGN KEY (id_transaksi_selesai) REFERENCES Transaksi_Selesai(id_transaksi_selesai)
);

-- ====================================
-- 13. TABEL TRANSAKSI_SELESAI
-- ====================================
CREATE TABLE Transaksi_Selesai (
    id_transaksi_selesai VARCHAR(10) PRIMARY KEY,
    id_pesanan VARCHAR(10),
    FOREIGN KEY (id_pesanan) REFERENCES Pesanan(id_pesanan)
);