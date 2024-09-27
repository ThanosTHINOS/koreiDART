void main() {
  // Daftar tugas dengan prioritas
  List<String> tugas = ['Tugas A', 'Tugas B', 'Tugas C', 'Tugas D', 'Tugas E'];

  // Menentukan urutan tugas berdasarkan aturan yang diberikan
  List<String> urutanTugas = [];

  // Tugas A harus selesai pertama
  urutanTugas.add(tugas[0]); // Tugas A
  urutanTugas.add(tugas[1]); // Tugas B
  urutanTugas.add(tugas[2]); // Tugas C
  urutanTugas.add(tugas[3]); // Tugas D
  urutanTugas.add(tugas[4]); // Tugas E

  // Menampilkan urutan penyelesaian tugas
  print('Urutan penyelesaian tugas:');
  print(urutanTugas.join('\n')); // Menampilkan urutan tugas tanpa for
}
