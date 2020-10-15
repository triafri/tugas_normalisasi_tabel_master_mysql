CREATE DATABASE tokokomputer;
USE tokokomputer;

CREATE TABLE tbl_toko(
id_toko TINYINT PRIMARY KEY,
nama_toko VARCHAR(100),
alamat_toko TEXT,
no_telp VARCHAR(15),
no_fax VARCHAR(15),
keterangan TEXT,
status_aktif BOOLEAN
);

CREATE TABLE tbl_jabatan(
id_jabatan TINYINT PRIMARY KEY AUTO_INCREMENT,
nama_jabatan VARCHAR(50),
status_aktif BOOLEAN
);

CREATE TABLE tbl_pegawai(
id_pegawai TINYINT PRIMARY KEY,
id_jabatan TINYINT,
nik INT(20),
nama_pegawai VARCHAR(100),
alamat_pegawai TEXT,
no_hp VARCHAR(15),
username VARCHAR(100),
pass VARCHAR(100),
id_bank VARCHAR(5),
no_rek VARCHAR(20),
keterangan TEXT,
status_aktif BOOLEAN
);

CREATE TABLE tbl_satuan(
id_satuan VARCHAR(10) PRIMARY KEY,
nama_satuan VARCHAR(25),
status_aktif BOOLEAN
);

CREATE TABLE tbl_rak(
id_rak VARCHAR(10) PRIMARY KEY,
nama_rak VARCHAR(50),
jumlah_tingkat TINYINT,
keterangan TEXT,
status_Aktif BOOLEAN
);

CREATE TABLE tbl_barang(
id_barang VARCHAR(10) PRIMARY KEY,
id_satuan VARCHAR(10),
id_rak VARCHAR(10),
barcode VARCHAR(50),
nama_barang VARCHAR(100),
stok VARCHAR(4)
);

CREATE TABLE tbl_suplier(
id_suplier VARCHAR(10) PRIMARY KEY,
nama_suplier VARCHAR(100),
alamat_suplier TEXT,
no_telp VARCHAR(15),
id_bank VARCHAR(5),
no_rek VARCHAR(20),
keterangan TEXT,
status_aktif BOOLEAN
);

CREATE TABLE tbl_bank(
id_bank VARCHAR(5) PRIMARY KEY,
nama_bank VARCHAR(50),
status_aktif BOOLEAN
);

CREATE TABLE tbl_pelanggan(
id_pelanggan VARCHAR(5) PRIMARY KEY,
nama_pelanggan VARCHAR(100),
no_hp VARCHAR(15),
alamat TEXT,
status_aktif BOOLEAN
);

CREATE TABLE tbl_nota(
id_nota VARCHAR(10) PRIMARY KEY,
no_nota VARCHAR(10),
tgl_nota TIMESTAMP NOT NULL,
status_aktif BOOLEAN
);

SHOW TABLES;
