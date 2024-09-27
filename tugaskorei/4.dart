import 'dart:io';

double konversiCelsiusKeFahrenheit(double celsius) {
  return (9.0 / 5.0) * celsius + 32;
}

void main() {
  stdout.write('Masukkan suhu dalam Celsius: ');
  double? celsius = double.parse(stdin.readLineSync()!);
  
  double fahrenheit = konversiCelsiusKeFahrenheit(celsius);
  print('Suhu dalam Fahrenheit: $fahrenheit');
}
