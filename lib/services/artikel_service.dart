import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dog_diary/models/anjing_kecil_model.dart';
import 'package:dog_diary/models/artikel_model.dart';

class ArtikelService {
  CollectionReference _artikelRef =
      FirebaseFirestore.instance.collection('artikels');

  Future<List<ArtikelModel>> fetchArtikel() async {
    try {
      QuerySnapshot result = await _artikelRef.get();

      List<ArtikelModel> artikels = result.docs.map(
        (e) {
          return ArtikelModel.fromJson(e.id, e.data() as Map<String, dynamic>);
        },
      ).toList();

      return artikels;
    } catch (e) {
      throw e;
    }
  }
}
