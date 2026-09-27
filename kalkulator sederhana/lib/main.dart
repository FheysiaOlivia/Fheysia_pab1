import 'dart:io';
import 'kalkulator_sederhana.dart';

void main() {
  Kalkulator kalkulator = Kalkulator();
  bool ulang = true;

  while (ulang) {
    print('');
    print('=== KALKULATOR SEDERHANA ===');
    print('');

    double angka1 = inputBilangan('Bilangan pertama: ');
    double angka2 = inputBilangan('Bilangan kedua: ');

    print('');
    print('Pilih operasi:');
    print('[1] Tambah');
    print('[2] Kurang');
    print('[3] Kali');
    print('[4] Bagi');
    int pilihan = inputPilihan();

    if (pilihan == 4 && angka2 == 0) {
      print('');
      print('Error: Tidak dapat melakukan pembagian dengan nol.');
    } else {
      double hasil = kalkulator.hitung(
        angka1,
        angka2,
        pilihan,
      );
      print('');
      print('Hasil: $hasil');
    }
    print('');
    ulang = hitungLagi();
  }
  print('');
  print('=== PROGRAM SELESAI ===');
}
double inputBilangan(String pesan) {
  while (true) {
    stdout.write(pesan);
    String? input = stdin.readLineSync();
    double? angka = double.tryParse(input ?? '');
    if (angka != null) {
      return angka;
    }
    print('');
    print('Input tidak valid.');
    print('Silakan masukkan bilangan yang benar.');
    print('');
  }
}
int inputPilihan() {
  while (true) {
    stdout.write('Pilihan: ');
    String? input = stdin.readLineSync();
    int? pilihan = int.tryParse(input ?? '');
    if (pilihan != null && pilihan >= 1 && pilihan <= 4) {
      return pilihan;
    }
    print('');
    print('Pilihan tidak valid.');
    print('Silakan masukkan pilihan 1-4.');
    print('');
  }
}
bool hitungLagi() {
  while (true) {
    stdout.write('Ingin melakukan perhitungan lagi? (Y/T): ');
    String? input = stdin.readLineSync();
    String jawaban = (input ?? '').toUpperCase();
    if (jawaban == 'Y') {
      return true;
    }
    if (jawaban == 'T') {
      return false;
    }
    print('');
    print('Input tidak valid.');
    print('Silakan masukkan Y untuk Ya atau T untuk Tidak.');
    print('');
  }
}