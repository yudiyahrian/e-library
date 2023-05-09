import 'package:e_library/models/setting.dart';
import 'package:flutter/material.dart';
import 'package:e_library/shared/settings.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {

  List<SettingModel> settings = [
    SettingModel(title: 'Profile', icon: 'iconProfile.svg', route: '/profile'),
    SettingModel(title: 'History', icon: 'history.svg', route: '/history'),
    SettingModel(title: 'Notifications', icon: 'notif.svg', route: '/notifications'),
    SettingModel(title: 'Info', icon: 'info.svg', route: '/info'),
    SettingModel(title: 'Help', icon: 'help.svg', route: '/help'),
    SettingModel(title: 'How to use', icon: 'Paper.svg', route: '/how_to_use'),
    SettingModel(title: 'Invoice', icon: 'Password.svg', route: '/invoice'),
    SettingModel(title: 'Terms, Condition & Privacy', icon: 'security.svg', route: '/terms'),
    SettingModel(title: 'Logout', icon: 'Logout.svg', route: '/logout'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Settings",
          style: TextStyle(fontSize: 26),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          color: const Color(0xff1F3B3A),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            colors: <Color>[
              Color(0xff1A3130),
              Color(0xff080F0F),
            ],
            stops: <double>[0, 1],
          ),
        ),
        child: ListView(
          children: <Widget>[
            Stack(
              children: [
                Container(
                  height: 150,
                  color: const Color(0xff1F3B3A),
                  child: Center(
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 15),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              "assets/images/profil.png",
                              width: 100.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 15),
                              child: const Text(
                                "Yudiya Ahrian",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 15),
                              child: const Text(
                                "yudiyaahrian@gmail.com",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: settings.map((setting) => SettingList(setting: setting)).toList(),
            )
          ],
        ),
      ),
    );
  }
}
