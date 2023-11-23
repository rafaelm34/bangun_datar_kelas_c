import 'package:bangun_datar_kelas_c/controller/persegi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPage extends StatelessWidget {
  PersegiPage({Key? key}) : super(key: key);
  final PersegiController _persegiController = Get.put(PersegiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Persegi', style: TextStyle(color: Color(0xFFFFFFFF)),),
        backgroundColor: Colors.blue.shade300,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/persegi.jpg",
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Persegi",
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
                "Persegi adalah suatu bentuk geometri dua dimensi yang memiliki keempat sisi yang sama panjang dan keempat sudut yang sama besar, yaitu sudut siku-siku (90 derajat). Dengan kata lain, persegi adalah suatu poligon dengan empat sisi sejajar yang memiliki panjang yang sama, dan keempat sudutnya membentuk sudut siku-siku. Karakteristik ini membuat persegi memiliki simetri tinggi dan sifat-sifat geometris yang khas.",
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
                            _persegiController.sisi = int.parse(value);
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            labelText: "Sisi",
                            hintText: "Masukkan Sisi",
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
                          _persegiController.hitungKeliling();
                        }, child: Text("Hitung Keliling"), style: ElevatedButton.styleFrom(
                          primary: Colors.lightBlueAccent,
                          onPrimary: Colors.white,
                        ),),
                        SizedBox(width: 15),
                        ElevatedButton(onPressed: () {
                          _persegiController.hitungLuas();
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
                    Obx(() => Text(_persegiController.hasilK.value, textAlign: TextAlign.center, style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 75,
                      fontWeight: FontWeight.bold,
                    ),)),
                    Obx(() => Text(_persegiController.hasilL.value, textAlign: TextAlign.center, style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 16)))
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}