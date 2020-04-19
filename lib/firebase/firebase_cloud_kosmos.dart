import 'package:cloud_firestore/cloud_firestore.dart';

class Cloud {
  static setCloud({String email, String cloud, Map<String, dynamic> map}) async {
    await Firestore.instance.collection(cloud).document(email).setData(map);
  }
}