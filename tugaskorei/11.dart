import 'dart:io';

void main() {
  // Persentase penggunaan baterai setiap 5 menit
  const int bateraiChatting = 1; // 1% setiap 5 menit
  const int bateraiVideo = 2;     // 2% setiap 5 menit
  const int bateraiGame = 3;      // 3% setiap 5 menit

  // Baterai awal
  int baterai = 100;

  // Waktu penggunaan (dalam menit)
  stdout.write('Masukkan waktu penggunaan untuk chatting (menit): ');
  int chattingTime = int.parse(stdin.readLineSync()!);
  
  stdout.write('Masukkan waktu penggunaan untuk menonton video (menit): ');
  int videoTime = int.parse(stdin.readLineSync()!);
  
  stdout.write('Masukkan waktu penggunaan untuk bermain game (menit): ');
  int gameTime = int.parse(stdin.readLineSync()!);

  // Menghitung total penggunaan baterai
  int penggunaanChatting = (chattingTime ~/ 5) * bateraiChatting; // Baterai untuk chatting
  int penggunaanVideo = (videoTime ~/ 5) * bateraiVideo;         // Baterai untuk video
  int penggunaanGame = (gameTime ~/ 5) * bateraiGame;            // Baterai untuk game

  // Mengurangi baterai berdasarkan penggunaan
  baterai -= (penggunaanChatting + penggunaanVideo + penggunaanGame);

  // Pastikan baterai tidak negatif
  if (baterai < 0) {
    baterai = 0;
  }

  // Menampilkan sisa baterai
  print('Sisa baterai setelah penggunaan: $baterai%');
}
