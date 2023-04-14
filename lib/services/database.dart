import 'package:e_library/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({required this.uid});
  DatabaseService.withoutUID() : uid = "";

  final CollectionReference userCollection = FirebaseFirestore.instance.collection('users');

  Future updateUserData(String name, String gender, String classes, String imageUrl) async {
    return await userCollection.doc(uid).set({
      'name': name,
      'gender': gender,
      'classes': classes,
      'imageUrl': imageUrl
    });
  }

  UserData _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return UserData(
      uid: uid,
      name: snapshot['name'],
      gender: snapshot['gender'],
      classes: snapshot['classes'],
      imageUrl: snapshot['imageUrl']
    );
  }

  Stream<UserData> get userData {
    return userCollection.doc(uid).snapshots()
        .map(_userDataFromSnapshot);
  }
}