/// Gorev modelini tanimlayan sinif
class Gorev {
  String id;
  String baslik;
  String aciklama;
  DateTime sonTarih;
  bool tamamlandi;

  Gorev({
    required this.id,
    required this.baslik,
    required this.aciklama,
    required this.sonTarih,
    this.tamamlandi = false,
  });

  // Firebase'den alinan veriyi modele donusturmek icin
  factory Gorev.firebaseVerisinden(Map<String, dynamic> veri) {
    return Gorev(
      id: veri['id'],
      baslik: veri['baslik'],
      aciklama: veri['aciklama'],
      sonTarih: DateTime.parse(veri['sonTarih']),
      tamamlandi: veri['tamamlandi'] ?? false,
    );
  }

  // Modeli Firebase'e kaydetmek icin JSON formatina donusturmek
  Map<String, dynamic> jsonFormatina() {
    return {
      'id': id,
      'baslik': baslik,
      'aciklama': aciklama,
      'sonTarih': sonTarih.toIso8601String(),
      'tamamlandi': tamamlandi,
    };
  }
}