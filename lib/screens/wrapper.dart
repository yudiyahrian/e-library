import 'package:e_library/models/user.dart';
import 'package:e_library/screens/authenticate/setup_profile.dart';
import 'package:e_library/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'authenticate/authenticate.dart';
import 'package:e_library/services/database.dart';


class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<UserModel?>(context);

    // return either home or authenticate
    if (user == null) {
      return const Authenticate();
    }else {
      final check = DatabaseService(uid: user.uid).userData;
      return StreamBuilder<UserData>(
          stream: check,
          builder: (context, snapshot) {
            if (snapshot.hasData && snapshot.data!.name == 'New user') {
              return const Home();
            } else {
              return const SetupProfile();
            }
          });
    }
  }
}
