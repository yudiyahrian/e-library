import 'package:e_library/models/user.dart';
import 'package:e_library/screens/authenticate/setup_profile.dart';
import 'package:e_library/screens/home/core.dart';
import 'package:e_library/screens/home/pages/start_screen.dart';
import 'package:e_library/shared/loading.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:e_library/services/database.dart';


class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<UserModel?>(context);

    return FutureBuilder(
      future: user == null ? null : DatabaseService(uid: user.uid).userData.first,
      builder: (context, snapshot) {
        if (user == null) {
          return const StartScreen();
        } else if (snapshot.connectionState == ConnectionState.waiting) {
          // Show loading spinner while waiting for data to load
          return const Loading();
        } else {
          if (snapshot.hasData) {
            final userData = snapshot.data;
            if (userData != null && userData.name == 'New user') {
              return const SetupProfile();
            } else {
              return const HomeCore();
            }
          } else {
            return const Loading();
          }
        }
      },
    );
  }
}
