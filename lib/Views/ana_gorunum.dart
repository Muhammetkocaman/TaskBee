import 'package:flutter/material.dart';
import '../Utils/sabitler.dart';

class AnaGorunum extends StatelessWidget {
  const AnaGorunum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          uygulamaAdi,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.yellow[700],
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _modernGorevKart(context, 'Görev 1', 'Görev 1 açıklaması'),
            const SizedBox(height: 10),
            _modernGorevKart(context, 'Görev 2', 'Görev 2 açıklaması'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.yellow[700],
        onPressed: () {
          Navigator.pushNamed(context, '/gorevEkle');
        },
        icon: const Icon(Icons.add, color: Colors.black),
        label: const Text(
          'Yeni Görev',
          style: TextStyle(color: Colors.black),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.yellow[700],
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_task),
            label: 'Görevler',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Ayarlar',
          ),
        ],
        onTap: (index) {
          // Seçilen öğeye göre yönlendirme yapılabilir.
          if (index == 0) {
            Navigator.pushNamed(context, '/');
          } else if (index == 1) {
            Navigator.pushNamed(context, '/gorevEkle');
          } else if (index == 2) {
            // Ayarlar sayfasına yönlendirme yapılabilir.
          }
        },
      ),
    );
  }

  Widget _modernGorevKart(BuildContext context, String baslik, String aciklama) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 4,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.yellow[700],
          child: const Icon(Icons.task, color: Colors.black),
        ),
        title: Text(
          baslik,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(aciklama),
        trailing: IconButton(
          icon: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
          onPressed: () {
            Navigator.pushNamed(context, '/gorevDetay', arguments: {
              'gorevBasligi': baslik,
              'gorevAciklamasi': aciklama,
            });
          },
        ),
      ),
    );
  }
}