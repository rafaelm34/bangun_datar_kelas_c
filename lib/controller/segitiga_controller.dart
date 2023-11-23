import 'package:get/get.dart';

class SegitigaController extends GetxController {
  double alas = 0;
  double tinggi = 0;
  double sisiKaki = 0;

  final hasilL = "".obs;
  final hasilK = "".obs;

  void hitungLuas (){
    double hitungL = 0.5 * alas * tinggi;
    hasilL.value = "Hasil perhitungan luas dari alas $alas dan tinggi $tinggi adalah $hitungL";
    hasilK.value = "$hitungL";
  }
  void hitungKeliling (){
    double hitungK = sisiKaki+sisiKaki+sisiKaki;
    hasilL.value = "Hasil perhitungan keliling dari alas $alas dan tinggi $tinggi adalah $hitungK";
    hasilK.value = "$hitungK";
  }
}