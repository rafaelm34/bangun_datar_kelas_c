import 'package:get/get.dart';

class LingkaranController extends GetxController{
  var r;
  final hasilL = "".obs;
  final hasilK = "".obs;

  void hitungLuas(){
    var hitungL = 3.14 * r * r;
    hasilL.value = "Hasil Perhitungan luas dari jari jari $r adalah $hitungL";
    hasilK.value = "$hitungL";
  }

  void hitungKeliling(){
    var hitungK = 2 * 3.14 * r;
    hasilL.value = "Hasil Perhitungan Keliling dari jari jari $r adalah $hitungK";
    hasilK.value = "$hitungK";
  }

}