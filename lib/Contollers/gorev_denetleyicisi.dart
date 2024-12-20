import 'package:cloud_firestore/cloud_firestore.dart';
import '../Models/gorev_modeli.dart';
import '../Utils/sabitler.dart';

/// Gorevlerin Firebase ile yonetimini saglayan sinif
class GorevDenetleyici {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Yeni bir gorev eklemek
  Future<void> gorevEkle(Gorev gorev) async {
    await _firestore.collection(gorevlerKoleksiyonu).doc(gorev.id).set(gorev.jsonFormatina());
  }

  // Gorevleri listeleme
  Stream<List<Gorev>> gorevleriGetir() {
    return _firestore.collection(gorevlerKoleksiyonu).snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => Gorev.firebaseVerisinden(doc.data())).toList();
    });
  }

  // Bir gorevi silmek
  Future<void> gorevSil(String gorevId) async {
    await _firestore.collection(gorevlerKoleksiyonu).doc(gorevId).delete();
  }

  // Gorevi tamamlandi olarak isaretlemek
  Future<void> gorevTamamla(String gorevId, bool tamamlandi) async {
    await _firestore.collection(gorevlerKoleksiyonu).doc(gorevId).update({'tamamlandi': tamamlandi});
  }
}