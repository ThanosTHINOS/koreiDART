void main() {
  // Jumlah mesin cuci dan waktu
  const int jumlahMesinCuci = 3;
  const double waktuPerMesinCuci = 2.0; // jam
  const int jumlahPenghuni = 5;
  const double waktuPerPenghuni = 1.5; // jam

  // Menghitung total waktu yang tersedia untuk mencuci
  double totalWaktu = jumlahMesinCuci * waktuPerMesinCuci; // Total waktu dalam jam

  // Menghitung jumlah penghuni yang dapat mencuci
  int penghuniDapatMencuci = (totalWaktu / waktuPerPenghuni).floor(); // Menggunakan floor untuk membulatkan ke bawah

  // Mengatur agar tidak melebihi jumlah penghuni yang ada
  if (penghuniDapatMencuci > jumlahPenghuni) {
    penghuniDapatMencuci = jumlahPenghuni;
  }

  // Menampilkan hasil
  print('Jumlah penghuni yang dapat mencuci di hari yang sama: $penghuniDapatMencuci');
}
