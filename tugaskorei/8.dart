import 'dart:io';

void main() {
  // Konsumsi listrik per jam (dalam kWh)
  double AC = 1.5;   // per jam
  double TV = 0.2;   // per jam
  double Lampu = 0.1; // per jam

  // Meminta input jumlah jam pemakaian untuk masing-masing perangkat
  stdout.write('Masukkan jumlah jam pemakaian AC: ');
  double jamPemakaianAC = double.parse(stdin.readLineSync()!);

  stdout.write('Masukkan jumlah jam pemakaian TV: ');
  double jamPemakaianTV = double.parse(stdin.readLineSync()!);

  stdout.write('Masukkan jumlah jam pemakaian Lampu: ');
  double jamPemakaianLampu = double.parse(stdin.readLineSync()!);

  // Menghitung total pemakaian listrik
  double totalListrik = (AC * jamPemakaianAC) + (TV * jamPemakaianTV) + (Lampu * jamPemakaianLampu);

  // Menampilkan total pemakaian listrik
  print('Total pemakaian listrik adalah: $totalListrik kWh');
}
