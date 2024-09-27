import 'dart:io';

void main() {
  // Kapasitas produksi pabrik
  const int produksiPerJam = 20; // unit per jam
  const int jamOperasiPerHari = 8; // jam per hari
  const int hariKerjaPerMinggu = 5; // hari kerja per minggu

  // Menghitung total produksi dalam satu minggu
  int totalProduksiPerHari = produksiPerJam * jamOperasiPerHari; // unit per hari
  int totalProduksiPerMinggu = totalProduksiPerHari * hariKerjaPerMinggu; // unit per minggu

  // Menampilkan hasil
  print('Total barang yang dihasilkan dalam satu minggu: $totalProduksiPerMinggu unit');
}
