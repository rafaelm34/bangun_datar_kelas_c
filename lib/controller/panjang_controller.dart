import 'package:get/get.dart';

class PanjangController extends GetxController{
  int p = 0;
  int l = 0;
  final hasilL ="".obs;
  final hasilK ="".obs;

  void hitungLuas(){
    int hitungL = p * l;
    hasilL.value = "Hasil Perhitungan Luas adalah $hitungL";
    hasilK.value = "$hitungL";
  }
  void hitungKeliling(){
    int hitungK = 2 * (p+l);
    hasilL.value = "Hasil Perhitungan Keliling adalah $hitungK";
    hasilK.value = "$hitungK";
  }
}