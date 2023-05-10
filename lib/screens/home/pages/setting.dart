import 'package:e_library/models/setting.dart';
import 'package:e_library/shared/loading.dart';
import 'package:e_library/shared/modal.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:e_library/shared/settings.dart';
import 'package:e_library/services/database.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:e_library/models/user.dart';

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
  ];


  @override
  Widget build(BuildContext context) {
    final User? currentUser = FirebaseAuth.instance.currentUser;
    String email = currentUser?.email ?? '';
    final user = Provider.of<UserModel?>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Settings",
          style: TextStyle(fontSize: 26),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          color: const Color(0xff1F3B3A),
        ),
      ),
      body: StreamBuilder(
        stream: DatabaseService(uid: user!.uid).userData,
        builder: (context, snapshot) {
          if(snapshot.hasData) {
            UserData? userData = snapshot.data;
            return Container(
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
                                  child: Image.network(
                                    userData!.imageUrl,
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
                                    child: Text(
                                      userData.name,
                                      style: const TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 15),
                                    child: Text(
                                      email,
                                      style: const TextStyle(
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
                    children: settings.map((setting) => SettingList(setting: setting))
                        .toList(),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    decoration: const BoxDecoration(
                      color: Color(0xff1F3B3A),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    child: ListTile(
                      horizontalTitleGap: 0,
                      title: const Text(
                        'Logout',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Quicksand',
                        ),
                      ),
                      leading: SvgPicture.asset(
                        "assets/icon/Logout.svg",
                        height: 24,
                        width: 24,
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 24.0,
                        color: Colors.white,
                      ),
                      onTap: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) {
                        return const ModalPopup();
                      },
                    ),
                  )
                  )
                ],
              ),
            );
          } else {
            return const Loading();
          }
        }
      ),
    );
  }
}
