import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Home Page",
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        backgroundColor: Colors.blue.shade300,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(child: CustomMenu(title: "Persegi", imageAsset: "assets/persegi.jpg",)),
                Expanded(child: CustomMenu(title: "Persegi Panjang", imageAsset: "assets/panjang.jpg",)),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(child: CustomMenu(title: "Segitiga", imageAsset: "assets/segitiga.jpg",)),
                Expanded(child: CustomMenu(title: "Lingkaran", imageAsset: "assets/lingkaran.jpg",)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key,
    required this.imageAsset,
    required this.title,
  });

  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        height: 300,
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
            color: Colors.blue.shade400,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(imageAsset,alignment: Alignment.center, width: 150),
            Text(
              title,
              style: TextStyle(
                color: Color(0xFFFFFFFF),
              ),
            ),
          ],
        ));
  }
}
