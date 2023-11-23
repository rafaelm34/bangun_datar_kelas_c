import 'package:bangun_datar_kelas_c/controller/panjang_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PanjangPage extends StatelessWidget {
  PanjangPage({Key? key}) : super(key: key);
  final PanjangController _panjangController = Get.put(PanjangController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Persegi Panjang', style: TextStyle(color: Color(0xFFFFFFFF)),),
        backgroundColor: Colors.blue.shade300,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/panjang.jpg",
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Persegi Panjang",
                style: TextStyle(
                  color: Color(0xFF000000),
                ),
              ),
            ),
            Container(
              width: 10000,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(color: Colors.blue.shade300,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Text(
                "Persegi panjang adalah sebuah bentuk geometris dua dimensi yang memiliki dua pasang sisi sejajar dengan panjang yang berbeda. Sisi sejajar yang memiliki panjang yang sama disebut sebagai panjang, sementara sisi sejajar yang panjangnya berbeda disebut sebagai lebar. Sudut di setiap sudut persegi panjang adalah sudut siku-siku (90 derajat). Persegi panjang memiliki empat sudut dan empat sisi, di mana panjang dan lebar dapat bervariasi tergantung pada ukurannya. Ini merupakan salah satu bentuk dasar dalam geometri dan ditemui dalam berbagai konteks, seperti dalam bangunan, matematika, dan sejumlah aplikasi lainnya.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(color: Colors.lightGreenAccent,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Column(
                  children: [
                    SizedBox(
                      width: 250,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: TextFormField(
                          onChanged: (value) {
                            _panjangController.p= int.parse(value);
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            labelText: "Panjang",
                            hintText: "Masukkan Panjang",
                            hintStyle: TextStyle(color: Colors.grey.shade400),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 4, horizontal: 8),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.blue),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: TextFormField(
                          onChanged: (value) {
                            _panjangController.l= int.parse(value);
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            labelText: "Lebar",
                            hintText: "Masukkan Lebar",
                            hintStyle: TextStyle(color: Colors.grey.shade400),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 4, horizontal: 8),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.blue),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(onPressed: () {
                          _panjangController.hitungKeliling();
                        }, child: Text("Hitung Keliling"), style: ElevatedButton.styleFrom(
                          primary: Colors.lightBlueAccent,
                          onPrimary: Colors.white,
                        ),),
                        SizedBox(width: 15),
                        ElevatedButton(onPressed: () {
                          _panjangController.hitungLuas();
                        }, child: Text("Hitung Luas"), style: ElevatedButton.styleFrom(
                          primary: Colors.greenAccent,
                          onPrimary: Colors.white,
                        )),
                      ],
                    )),
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(color: Colors.greenAccent,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                width: 10000000,
                height: 200,
                child: Column(
                  children: [
                    Text("Hasil :", style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                    Obx(() => Text(_panjangController.hasilK.value, textAlign: TextAlign.center, style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 75,
                      fontWeight: FontWeight.bold,
                    ),)),
                    Obx(() => Text(_panjangController.hasilL.value, textAlign: TextAlign.center, style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 16)))
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}