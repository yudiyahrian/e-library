import 'package:e_library/screens/authenticate/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:e_library/services/auth.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        children: [
          TextButton.icon(
            onPressed: () async{
              await _auth.signOut();
            },
            icon: const Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: const Text(
              'Logout',
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const UserProfile()));
            },
            icon: const Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: const Text(
              'Edit user',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
