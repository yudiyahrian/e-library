import 'package:e_library/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({required this.uid});
  DatabaseService.withoutUID() : uid = "";

  final CollectionReference userCollection = FirebaseFirestore.instance.collection('users');

  Future updateUserData(String name, String classes, String imageUrl, String majors, String phoneNumber) async {
    return await userCollection.doc(uid).set({
      'name': name,
      'classes': classes,
      'imageUrl': imageUrl,
      'majors': majors,
      'phone_number': phoneNumber
    });
  }

  UserData _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return UserData(
      uid: uid,
      name: snapshot['name'],
      classes: snapshot['classes'],
      imageUrl: snapshot['imageUrl'],
      majors: snapshot['majors'],
      phoneNumber: snapshot['phone_number']
    );
  }

  Stream<UserData> get userData {
    return userCollection.doc(uid).snapshots()
        .map(_userDataFromSnapshot);
  }
}