import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Utils/sabitler.dart';
import 'Utils/tema.dart';
import 'Views/ana_gorunum.dart';
import 'Views/gorev_detay_gorunumu.dart';
import 'Views/gorev_ekle_gorunumu.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp();
    runApp(const TaskBeeApp());
  } catch (e) {
    print("Firebase hatası: $e");
  }
}
class TaskBeeApp extends StatelessWidget {
  const TaskBeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: uygulamaAdi,
      theme: tema,
      initialRoute: '/',
      routes: {
        '/': (context) => const AnaGorunum(),
        '/gorevDetay': (context) => const GorevDetayGorunumu(
              gorevBasligi: 'Örnek Başlık',
              gorevAciklamasi: 'Örnek Açıklama',
            ),
        '/gorevEkle': (context) =>  GorevEkleGorunumu(),
      },
    );
  }
}