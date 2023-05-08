import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          child: const Icon(
            Icons.close_rounded,
            size: 30.0,
          ),
        ),
        title: const Text(
          "Setting",
          style: TextStyle(fontSize: 26),
        ),
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
            Container(
              margin: const EdgeInsets.fromLTRB(20, 30, 20, 20),
              padding: const EdgeInsets.all(7.0),
              decoration: const BoxDecoration(
                color: Color(0xff1F3B3A),
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: ListTile(
                horizontalTitleGap: 5,
                title: const Text(
                  "Profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Quicksand',
                  ),
                ),
                leading: SvgPicture.asset(
                  "assets/icon/iconProfile.svg",
                  height: 32,
                  width: 32,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 24.0,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              padding: const EdgeInsets.all(7.0),
              decoration: const BoxDecoration(
                color: Color(0xff1F3B3A),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: ListTile(
                horizontalTitleGap: 5,
                title: const Text(
                  "History",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Quicksand',
                  ),
                ),
                leading: SvgPicture.asset(
                  "assets/icon/history.svg",
                  height: 32,
                  width: 32,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 24.0,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              padding: const EdgeInsets.all(7.0),
              decoration: const BoxDecoration(
                color: Color(0xff1F3B3A),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: ListTile(
                horizontalTitleGap: 5,
                title: const Text(
                  "Notifications",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Quicksand',
                  ),
                ),
                leading: SvgPicture.asset(
                  "assets/icon/notif.svg",
                  height: 32,
                  width: 32,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 24.0,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              padding: const EdgeInsets.all(7.0),
              decoration: const BoxDecoration(
                color: Color(0xff1F3B3A),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: ListTile(
                horizontalTitleGap: 5,
                title: const Text(
                  "Info",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Quicksand',
                  ),
                ),
                leading: SvgPicture.asset(
                  "assets/icon/info.svg",
                  height: 32,
                  width: 32,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 24.0,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              padding: const EdgeInsets.all(7.0),
              decoration: const BoxDecoration(
                color: Color(0xff1F3B3A),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: ListTile(
                horizontalTitleGap: 5,
                title: const Text(
                  "Help",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Quicksand',
                  ),
                ),
                leading: SvgPicture.asset(
                  "assets/icon/help.svg",
                  height: 32,
                  width: 32,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 24.0,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              padding: const EdgeInsets.all(7.0),
              decoration: const BoxDecoration(
                color: Color(0xff1F3B3A),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: ListTile(
                horizontalTitleGap: 5,
                title: const Text(
                  "How to use",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Quicksand',
                  ),
                ),
                leading: SvgPicture.asset(
                  "assets/icon/Paper.svg",
                  height: 32,
                  width: 32,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 24.0,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              padding: const EdgeInsets.all(7.0),
              decoration: const BoxDecoration(
                color: Color(0xff1F3B3A),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: ListTile(
                horizontalTitleGap: 5,
                title: const Text(
                  "Invoice",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Quicksand',
                  ),
                ),
                leading: SvgPicture.asset(
                  "assets/icon/Password.svg",
                  height: 32,
                  width: 32,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 24.0,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              padding: const EdgeInsets.all(7.0),
              decoration: const BoxDecoration(
                color: Color(0xff1F3B3A),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: ListTile(
                horizontalTitleGap: 5,
                title: const Text(
                  "Terms, Condition & Privacy",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Quicksand',
                  ),
                ),
                leading: SvgPicture.asset(
                  "assets/icon/security.svg",
                  height: 32,
                  width: 32,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 24.0,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              padding: const EdgeInsets.all(7.0),
              decoration: const BoxDecoration(
                color: Color(0xff1F3B3A),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: ListTile(
                horizontalTitleGap: 5,
                title: const Text(
                  "Logout",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Quicksand',
                  ),
                ),
                leading: SvgPicture.asset(
                  "assets/icon/Logout.svg",
                  height: 32,
                  width: 32,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 24.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
