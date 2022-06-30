import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/anjing_besar_model.dart';

class AnjingBesarService {
  CollectionReference _anjingbesarRef =
      FirebaseFirestore.instance.collection('anjingbesars');

  Future<List<AnjingBesarModel>> fetchAnjingbesar() async {
    try {
      QuerySnapshot result = await _anjingbesarRef.get();

      List<AnjingBesarModel> anjingbesars = result.docs.map(
        (e) {
          return AnjingBesarModel.fromJson(
              e.id, e.data() as Map<String, dynamic>);
        },
      ).toList();

      return anjingbesars;
    } catch (e) {
      throw e;
    }
  }
}
