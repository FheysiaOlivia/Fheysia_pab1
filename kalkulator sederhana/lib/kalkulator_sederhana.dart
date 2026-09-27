class Kalkulator {
  double tambah(double angka1, double angka2) {
    return angka1 + angka2;
  }
  double kurang(double angka1, double angka2) {
    return angka1 - angka2;
  }
  double kali(double angka1, double angka2) {
    return angka1 * angka2;
  }
  double bagi(double angka1, double angka2) {
    return angka1 / angka2;
  }
  double hitung(double angka1, double angka2, int pilihan) {
    switch (pilihan) {
      case 1: return tambah(angka1, angka2);
      case 2: return kurang(angka1, angka2);
      case 3: return kali(angka1, angka2);
      case 4: return bagi(angka1, angka2);
      default:
        throw Exception('Pilihan operasi tidak valid');
    }
  }
}