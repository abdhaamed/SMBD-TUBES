# Setup Proyek Database: resto_mevvah

Proyek ini menggunakan MySQL sebagai sistem manajemen database. File skrip tersedia di folder `inputs/`.

---

## 📦 Struktur Folder

```
MySQL-TUBES/
├── inputs/
│   └── customers_data.sql     # Data awal pelanggan
├── README.md                  # Panduan setup
```

---

## ⚙️ Langkah Setup di MySQL

### 1. Buat Database Baru

Buka **MySQL CLI**, **DataGrip**, atau tools lainnya, lalu jalankan:

```sql
CREATE DATABASE resto_mevvah;
USE resto_mevvah;
```

---

### 2. Jalankan Skrip SQL

Import data dari file `customers_data.sql`:

#### Jika via terminal MySQL CLI:

```bash
mysql -u root -p resto_mevvah < inputs/customers_data.sql
```

#### Jika via DataGrip:

- Klik kanan pada koneksi database.
- Pilih `Run SQL Script...`
- Pilih file `customers_data.sql` di folder `inputs/`.
- Jalankan skrip.

---

## ✅ Selesai

Database `resto_mevvah` siap digunakan.
