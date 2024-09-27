void main() {
  List<String> nasabah = ['Nasabah A', 'Nasabah B', 'Nasabah C', 'Nasabah D', 'Nasabah E'];

  nasabah.asMap().forEach((index, value) {
    int loket = (index % 2) + 1; 
    print('$value dilayani di $loket'); 
  });
}
