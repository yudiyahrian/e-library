import 'package:e_library/models/user.dart';
import 'package:e_library/screens/authenticate/authenticate.dart';
import 'package:e_library/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<UserModel?>(context);

    // return either home or authenticate
    if (user == null) {
      return const Authenticate();
    }else {
      return Home();
    }
  }
}
