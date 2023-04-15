class UserModel {
  final String uid;
  final String name;

  UserModel({required this.uid, required this.name});
}

class UserData {
  final String uid;
  final String name;
  final String gender;
  final String classes;
  final String majors;
  final String phoneNumber;
  final String imageUrl;

  UserData({required this.uid, required this.name, required this.gender, required this.classes, required this.imageUrl, required this.majors, required this.phoneNumber});
}