import 'package:bangun_datar_kelas_c/controller/lingkaran_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranPage extends StatelessWidget {
  LingkaranPage({Key? key}) : super(key: key);
  final LingkaranController _lingkaranController = Get.put(LingkaranController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Lingkaran', style: TextStyle(color: Color(0xFFFFFFFF)),),
        backgroundColor: Colors.blue.shade300,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/lingkaran.jpg",
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Lingkaran",
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
                "Lingkaran adalah bentuk yang terdiri dari semua titik dalam bidang yang berjarak tertentu dari titik tertentu, pusat; ekuivalennya adalah kurva yang dilacak oleh titik yang bergerak dalam bidang sehingga jaraknya dari titik tertentu adalah konstan. Jarak antara titik mana pun dari lingkaran dan pusat disebut jari-jari. Artikel ini adalah tentang lingkaran dalam geometri Euklides, dan, khususnya, bidang Euklides, kecuali jika dinyatakan sebaliknya.",
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
                            _lingkaranController.r= int.parse(value);
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            labelText: "Jari-jari",
                            hintText: "Masukkan Jari=jari",
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
                          _lingkaranController.hitungKeliling();
                        }, child: Text("Hitung Keliling"), style: ElevatedButton.styleFrom(
                          primary: Colors.lightBlueAccent,
                          onPrimary: Colors.white,
                        ),),
                        SizedBox(width: 15),
                        ElevatedButton(onPressed: () {
                          _lingkaranController.hitungLuas();
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
                    Obx(() => Text(_lingkaranController.hasilK.value, textAlign: TextAlign.center, style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 75,
                      fontWeight: FontWeight.bold,
                    ),)),
                    Obx(() => Text(_lingkaranController.hasilL.value, textAlign: TextAlign.center, style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 16)))
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}