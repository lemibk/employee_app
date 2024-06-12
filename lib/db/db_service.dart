import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'user.dart';

class DatabaseService {
  final _firestore = FirebaseFirestore.instance;
  create(User user) async {
    try {
      await _firestore.collection("students").add(user.toMap()
          //   {
          //   "name": user.name,
          //   "age": user.age,
          // }
          );
    } catch (e) {
      log(e.toString());
    }
  }

  read() async {
    try {
      await _firestore.collection("students").get();
      final snapshot = _firestore.collection("students").snapshots();
      snapshot.forEach((element) {
        // log(element.toString());
        // log(element.docs.toString());
        // log(element.docs[0].data().toString());
        log(element.docs[0].data()["name"].toString());
        log(element.docs[0].data()["age"].toString());
      });
    } catch (e) {
      log(e.toString());
    }
  }

  update() async {
    try {
      await _firestore
          .collection("students")
          .doc("mNTThUFhV2gi2NvJfczD")
          .update({
        "name": "fires",
        "age": 35,
      });
    } catch (e) {
      log(e.toString());
    }
  }

  delete() async {
    try {
      await _firestore
          .collection("students")
          .doc("mNTThUFhV2gi2NvJfczD")
          .delete();
    } catch (e) {
      log(e.toString());
    }
  }
}
