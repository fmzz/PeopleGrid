import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  // collection references
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('users');

  Future newUserData(String uid, String email) {
    return userCollection.doc(uid).set({
      'uid': uid,
      'email': email,
      'createdAt': FieldValue.serverTimestamp()
    }).catchError((error) => print("Failed to add user: $error"));
  }
}
