import 'package:firebase_auth/firebase_auth.dart';
import 'package:e_library/models/user.dart';
import 'package:e_library/services/database.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user object based on user
  UserModel? _userFromFirebaseUser(User? user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }

  // auth changes user stream
  Stream<UserModel?> get user {
    return _auth.authStateChanges()
    // .map((User? user) => _userFromFirebaseUser(user)); same as below code
        .map(_userFromFirebaseUser);
  }

  // sign in anon

  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromFirebaseUser(user);
    } catch(e) {
      print(e.toString());
      return null;
    }
  }

  // // sign in with email and password
  // Future signInWithEmailAndPassword(String email, String password) async{
  //   try {
  //     UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
  //     User? user = result.user;
  //     return _userFromFirebaseUser(user);
  //   }catch(e){
  //     print(e.toString());
  //     return null;
  //   }
  // }

  // register with email and password
  Future registerWithEmailAndPassword(String email, String password) async{
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      // create a new document for the user with uid for profile
      await DatabaseService(uid: user!.uid).updateUserData('New user', 'None', 'None', 'https://img.freepik.com/free-vector/illustration-businessman_53876-5856.jpg?w=740&t=st=1681009434~exp=1681010034~hmac=e69ca75338acbc3a3e8e79962d16ebafca18f1982274dd695b480ebe19c083de');

      return _userFromFirebaseUser(user);
    }catch(e){
      try {
        UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
        User? user = result.user;
        return _userFromFirebaseUser(user);
      }catch(e){
        print(e.toString());
        return null;
      }
    }
  }

  //sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    }catch(e){
      print(e.toString());
      return null;
    }
  }

}