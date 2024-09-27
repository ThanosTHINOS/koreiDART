import 'dart:io';

void main() {
  int gajipokok = 4000000; 
  int bonusgaji = 200000; 
  stdout.write('Masukkan jumlah jam kerja: ');
  int jamkerja = int.parse(stdin.readLineSync()!);

  int totalgaji;

  if (jamkerja <= 40) {
    totalgaji = gajipokok;
  } else {
    totalgaji = gajipokok +  bonusgaji;
  }

  print('Total gaji karyawan: Rp $totalgaji');
}
