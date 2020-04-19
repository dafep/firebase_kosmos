import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_kosmos/constant/authMessage.dart';

class Cloud {
  static setCloud({String email, String cloud, Map<String, dynamic> map}) async {
    try {
      await Firestore.instance.collection(cloud).document(email).setData(map);
      return (SUCCESS);
    } catch (e) {
      return (e);
    }
  }

  static updateCloud({String email, String cloud, Map<String, dynamic> map}) async {
    try {
      await Firestore.instance.collection(cloud).document(email).updateData(map);
      return (SUCCESS);
    } catch (e) {
      return e;
    }
  }
}