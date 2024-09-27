import 'dart:io';

void main() {
  int tarifParkir = 2000; 
  int tarifParkirBerikutnya = 1000; 
  stdout.write('Masukkan jumlah jam parkir: ');
  int jamParkir = int.parse(stdin.readLineSync()!);

  int totalHarga;

  if (jamParkir <= 2) {
    totalHarga = tarifParkir;
  } else {
    totalHarga = tarifParkir + (jamParkir - 0) * tarifParkirBerikutnya;
  }

  print('Total uang parkir yang harus dibayar: Rp $totalHarga');
}
