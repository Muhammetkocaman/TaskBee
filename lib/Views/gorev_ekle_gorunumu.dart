import 'package:flutter/material.dart';

class GorevEkleGorunumu extends StatelessWidget {
  final TextEditingController baslikDenetleyici = TextEditingController();
  final TextEditingController aciklamaDenetleyici = TextEditingController();

  GorevEkleGorunumu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Yeni Görev Ekle',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.yellow[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: baslikDenetleyici,
              decoration: const InputDecoration(
                labelText: 'Başlık',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: aciklamaDenetleyici,
              decoration: const InputDecoration(
                labelText: 'Açıklama',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Görev ekleme mantığı burada
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow[700],
              ),
              child: const Text('Görevi Kaydet'),
            ),
          ],
        ),
      ),
    );
  }
}