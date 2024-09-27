import 'dart:io';

void main() {
  // Daftar barang yang akan dibawa
  List<String> barang = [
    'Makanan (3 kg, bernilai 50)',
    'Pakaian (2 kg, bernilai 30)',
    'Alat Masak (4 kg, bernilai 40)',
    'Tenda (5 kg, bernilai 70)',
    'Sleeping Bag (2 kg, bernilai 20)'
  ];
  List<int> berat = [3, 2, 4, 5, 2]; // Berat masing-masing barang
  List<int> nilai = [50, 30, 40, 70, 20]; // Nilai masing-masing barang
  int kapasitas = 10; // Kapasitas maksimal ransel

  // Menampilkan daftar barang
  print('Daftar barang yang bisa dibawa:');
  barang.asMap().forEach((i, item) => print('${i + 1}. $item'));

  // Meminta input jumlah barang yang ingin dibawa
  List<int> jumlahBarang = [];
  barang.forEach((item) {
    stdout.write('Masukkan jumlah ${item.split(' ')[0]} yang ingin dibawa: ');
    int jumlah = int.parse(stdin.readLineSync()!);
    jumlahBarang.add(jumlah);
  });

  // Menghitung total berat menggunakan reduce
  int totalBerat = List.generate(barang.length, (i) => berat[i] * jumlahBarang[i]).reduce((a, b) => a + b);

  // Cek jika total berat melebihi kapasitas
  if (totalBerat > kapasitas) {
    print('berat woiiii!');
    return; // Keluar dari program
  }

  // Membuat tabel untuk menyimpan nilai maksimal
  List<List<int>> dp = List.generate(barang.length + 1, (i) => List.filled(kapasitas + 1, 0));

  // Mengisi tabel dp
  List.generate(barang.length + 1, (i) {
    return List.generate(kapasitas + 1, (j) {
      if (i == 0 || j == 0) return 0; // Dasar DP
      return (berat[i - 1] <= j)
          ? (dp[i - 1][j] > (dp[i - 1][j - berat[i - 1]] + nilai[i - 1]))
              ? dp[i - 1][j]
              : (dp[i - 1][j - berat[i - 1]] + nilai[i - 1])
          : dp[i - 1][j];
    });
  });

  // Nilai maksimum yang dapat dibawa
  int maxValue = dp[barang.length][kapasitas];
  print('Nilai maksimum yang dapat dibawa: $maxValue');

  // Menentukan kombinasi barang yang diambil
  List<String> kombinasiBarang = [];
  int w = kapasitas;
  
  // Menggunakan while untuk mencari kombinasi
  while (maxValue > 0) {
    int i = barang.length;
    while (i > 0) {
      if (maxValue != dp[i - 1][w]) {
        kombinasiBarang.add(barang[i - 1]);
        maxValue -= nilai[i - 1];
        w -= berat[i - 1];
        break; // Berhenti setelah menambahkan barang ini
      }
      i--;
    }
  }

  // Menampilkan kombinasi barang yang diambil
  print('Kombinasi barang yang harus dibawa: ${kombinasiBarang.reversed.join(', ')}');
}
