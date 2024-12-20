import 'package:flutter/material.dart';

class GorevDetayGorunumu extends StatelessWidget {
  final String gorevBasligi;
  final String gorevAciklamasi;

  const GorevDetayGorunumu({super.key, 
    required this.gorevBasligi,
    required this.gorevAciklamasi,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Gorev Detayi',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.yellow[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              gorevBasligi,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              gorevAciklamasi,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}