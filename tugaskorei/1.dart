import 'dart:io';

void main() {
  int hargaApelPerKg = 5000;
  int hargaJerukPerKg = 4000;

  stdout.write('Masukkan jumlah kilogram apel yang dibeli: ');
  int jumlahApel = int.parse(stdin.readLineSync()!);

  stdout.write('Masukkan jumlah kilogram jeruk yang dibeli: ');
  int jumlahJeruk = int.parse(stdin.readLineSync()!);

  int totalHarga = (jumlahApel * hargaApelPerKg) + (jumlahJeruk * hargaJerukPerKg);

  print('Total harga yang harus dibayar: Rp $totalHarga');
}
