import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dog_diary/models/anjing_kecil_model.dart';

class AnjingKecilService {
  CollectionReference _anjingkecilRef =
      FirebaseFirestore.instance.collection('anjingkecils');

  Future<List<AnjingKecilModel>> fetchAnjingKecil() async {
    try {
      QuerySnapshot result = await _anjingkecilRef.get();

      List<AnjingKecilModel> anjingkecils = result.docs.map(
        (e) {
          return AnjingKecilModel.fromJson(
              e.id, e.data() as Map<String, dynamic>);
        },
      ).toList();

      return anjingkecils;
    } catch (e) {
      throw e;
    }
  }
}
