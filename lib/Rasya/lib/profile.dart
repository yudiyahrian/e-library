import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
          "Profile",
          style: TextStyle(fontSize: 26),
        ),
        flexibleSpace: Container(
          color: const Color(0xff1F3B3A),
        ),
      ),
      body: Container(
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
                  height: 250,
                  color: const Color(0xff1F3B3A),
                  child: Center(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              "assets/images/profil.png",
                              width: 120.0,
                              height: 120.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            child: const Text(
                              "Yudiya Ahrian",
                              style: TextStyle(
                                fontSize: 22.0,
                                color: Colors.white,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            width: 120,
                            height: 30,
                            margin: const EdgeInsets.only(top: 15),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF01B58A),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              child: const Text(
                                'Edit Profile',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Quicksand bold',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 30, 20, 0),
              padding: const EdgeInsets.all(7.0),
              decoration: const BoxDecoration(
                // color: Color(0xff1F3B3A),
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: ListTile(
                horizontalTitleGap: 5,
                title: const Text(
                  "Full Name",
                  style: TextStyle(
                    color: Color(0xff01B58A),
                    fontSize: 18,
                    fontFamily: 'Quicksand bold',
                  ),
                ),
                leading: SvgPicture.asset(
                  "assets/icon/iconProfile.svg",
                  color: const Color(0xff01B58A),
                  height: 32,
                  width: 32,
                ),
                subtitle: const Text(
                  'Yudiya Ahrian',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: 'Quicksand bold',
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              padding: const EdgeInsets.all(7.0),
              decoration: const BoxDecoration(
                // color: Color(0xff1F3B3A),
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: ListTile(
                horizontalTitleGap: 5,
                title: const Text(
                  "Class",
                  style: TextStyle(
                    color: Color(0xff01B58A),
                    fontSize: 18,
                    fontFamily: 'Quicksand bold',
                  ),
                ),
                leading: SvgPicture.asset(
                  "assets/icon/iconProfile.svg",
                  color: const Color(0xff01B58A),
                  height: 32,
                  width: 32,
                ),
                subtitle: const Text(
                  'XI',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: 'Quicksand bold',
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              padding: const EdgeInsets.all(7.0),
              decoration: const BoxDecoration(
                // color: Color(0xff1F3B3A),
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: ListTile(
                horizontalTitleGap: 5,
                title: const Text(
                  "Major",
                  style: TextStyle(
                    color: Color(0xff01B58A),
                    fontSize: 18,
                    fontFamily: 'Quicksand bold',
                  ),
                ),
                leading: SvgPicture.asset(
                  "assets/icon/iconProfile.svg",
                  color: const Color(0xff01B58A),
                  height: 32,
                  width: 32,
                ),
                subtitle: const Text(
                  'PPLG II',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: 'Quicksand bold',
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              padding: const EdgeInsets.all(7.0),
              decoration: const BoxDecoration(
                // color: Color(0xff1F3B3A),
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: ListTile(
                horizontalTitleGap: 5,
                title: const Text(
                  "Phone Number",
                  style: TextStyle(
                    color: Color(0xff01B58A),
                    fontSize: 18,
                    fontFamily: 'Quicksand bold',
                  ),
                ),
                leading: SvgPicture.asset(
                  "assets/icon/iconProfile.svg",
                  color: const Color(0xff01B58A),
                  height: 32,
                  width: 32,
                ),
                subtitle: const Text(
                  '+62 812 9013 2567',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: 'Quicksand bold',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
