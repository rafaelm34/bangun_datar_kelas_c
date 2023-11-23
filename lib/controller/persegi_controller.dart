import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi = 0;
  final hasilL ="".obs;
  final hasilK ="".obs;

  void hitungLuas(){
    int hitungL = sisi * sisi;
    hasilL.value = "Hasil Perhitungan Luas dari $sisi adalah $hitungL";
    hasilK.value = "$hitungL";
  }
  void hitungKeliling(){
    int hitungK = 4 * sisi;
    hasilL.value = "Hasil Perhitungan Keliling dari $sisi adalah $hitungK";
    hasilK.value = "$hitungK";
  }
}