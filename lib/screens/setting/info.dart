import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import 'package:e_library/shared/colors.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
            colors: <Color>[
              Color(0xff1A3130),
              Color(0xff080F0F),
            ],
            stops: <double>[0, 1],
          ),
        ),
        child: Column(
            children: [
              Container(
                height: 40,
                color: bgOnBoard,
                child: Row(
                  children: [
                    GestureDetector(
                      child: const Padding(
                        padding: EdgeInsets.only(left: 15, right: 3),
                        child: Icon(Icons.close, size: 37,color: Colors.white,),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    const Text(
                      'Info',
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Quick Sand',
                          fontSize: 22,
                          color: Colors.white
                      ),
                    )
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    height: 123,
                    color: bgOnBoard,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(width: 10,),
                        SizedBox(
                          width: 144,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Informasi Tentang',
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Quick Sand',
                                    fontSize: 22,
                                    color: Colors.white
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'E-St',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Quick Sand',
                                        fontWeight: FontWeight.w700,
                                        color: btnColor,
                                        decoration: TextDecoration.none
                                    ),
                                  ),
                                  Text(
                                    'arby',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Quick Sand',
                                        fontWeight: FontWeight.w700,
                                        decoration: TextDecoration.none,
                                        color: whiteColor
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                            width: 206,
                            height: 270,
                            child: Stack(
                                children: <Widget>[
                                  Positioned(
                                      top: 0,
                                      left: 10,
                                      child: SvgPicture.asset('assets/Ellipse38.svg')
                                  ),
                                  Positioned(
                                      top: -25,
                                      left: 30,
                                      child: Container(
                                          width: 157,
                                          height: 148,
                                          decoration: const BoxDecoration(
                                            image : DecorationImage(
                                                image: AssetImage('assets/images/setting/Mobile_Phone_Flatline.png'),
                                                fit: BoxFit.fitWidth
                                            ),
                                          )
                                      )
                                  ),
                                ]
                            )
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height -200,
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'Tentang',
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Quick Sand',
                                        fontSize: 23,
                                        color: Colors.white
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        'E-St',
                                        style: TextStyle(
                                            fontSize: 23,
                                            fontFamily: 'Quick Sand',
                                            fontWeight: FontWeight.w700,
                                            color: btnColor,
                                            decoration: TextDecoration.none
                                        ),
                                      ),
                                      Text(
                                        'arby',
                                        style: TextStyle(
                                            fontSize: 23,
                                            fontFamily: 'Quick Sand',
                                            fontWeight: FontWeight.w700,
                                            decoration: TextDecoration.none,
                                            color: whiteColor
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 171,
                                    width: 150,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/setting/tentang_e-starby.png',
                                        ),
                                      )
                                    ),
                                  ),
                                  const SizedBox(width: 10,),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width - 170,
                                    child: const Text(
                                      'E-Library Starbhak merupakan aplikasi berbasis mobile yang bertujuan untuk membantu siswa dan siswi SMK Taruna Bhakti untuk melakukan peminjaman buku dengan menggunakan smartphone.',
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: 'Quick Sand',
                                          fontSize: 15,
                                          color: Colors.white
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        height: 165,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  const Text(
                                    'Versi yang dimiliki',
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Quick Sand',
                                        fontSize: 23,
                                        color: Colors.white
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        'E-St',
                                        style: TextStyle(
                                            fontSize: 23,
                                            fontFamily: 'Quick Sand',
                                            fontWeight: FontWeight.w700,
                                            color: btnColor,
                                            decoration: TextDecoration.none
                                        ),
                                      ),
                                      Text(
                                        'arby',
                                        style: TextStyle(
                                            fontSize: 23,
                                            fontFamily: 'Quick Sand',
                                            fontWeight: FontWeight.w700,
                                            decoration: TextDecoration.none,
                                            color: whiteColor
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 130,
                                  width: 150,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/setting/Code_Development _Flatline.png',
                                        ),
                                      )
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width - 170,
                                  child: const Text(
                                    'Saat ini E-Library Starbhak sedang berada didalam proses pengembangan dan berada dalam versi beta testing, bismillah moga-moga cepet kelar',
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: 'Quick Sand',
                                        fontSize: 15,
                                        color: Colors.white
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: SizedBox(
                              height: 160,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, bottom: 15),
                                    child: Row(
                                      children: [
                                        const Text(
                                          'Fitur yang dimiliki',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'Quick Sand',
                                              fontSize: 23,
                                              color: Colors.white
                                          ),
                                        ),
                                        const SizedBox(width: 5),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              'E-St',
                                              style: TextStyle(
                                                  fontSize: 23,
                                                  fontFamily: 'Quick Sand',
                                                  fontWeight: FontWeight.w700,
                                                  color: btnColor,
                                                  decoration: TextDecoration.none
                                              ),
                                            ),
                                            Text(
                                              'arby',
                                              style: TextStyle(
                                                  fontSize: 23,
                                                  fontFamily: 'Quick Sand',
                                                  fontWeight: FontWeight.w700,
                                                  decoration: TextDecoration.none,
                                                  color: whiteColor
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 100,
                                        width: 150,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'assets/images/setting/fitur_e-starby.png',
                                              ),
                                            )
                                        ),
                                      ),
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width - 170,
                                        child: const Text(
                                          'E-Starby dapat membantu Siswa/Siswi SMK Taruna Bhakti untuk melakukan peminjaman buku melalui smartphone masing-masing. ',
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: 'Quick Sand',
                                              fontSize: 15,
                                              color: Colors.white
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 20, left: 20),
                            child: Container(
                              height: 130,
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    height: 110,
                                    width: 120,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images/setting/fitur2_e-starby.png',
                                          ),
                                        )
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width - 170,
                                    child: const Text(
                                      'E-Starby juga menyediakan fitur baca langsung dimana siswa/siswi dapat langsung membaca buku-buku yang telah dipinjam kapan saja dan dimana saja dengan batas waktu yang telah ditentukan.',
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: 'Quick Sand',
                                          fontSize: 15,
                                          color: Colors.white
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 20, left: 20),
                            child: Container(
                              height: 130,
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    height: 110,
                                    width: 120,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images/setting/fitur3_e-starby.png',
                                          ),
                                        )
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width - 170,
                                    child: const Text(
                                      'Keamanan data yang terjaga dengan sistem login, juga data akun dan peminjaman yang dikelola langsung oleh pihak sekolah memberikan jaminan  keamanan data terkait aplikasi E-Starby.',
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: 'Quick Sand',
                                          fontSize: 15,
                                          color: Colors.white
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: const Text(
                                'Frequently asked question (FAQ)',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Quick Sand',
                                    fontSize: 23,
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 30),
                              height: 180,
                              width: 180,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/setting/siapa_pembuat_starby.png',
                                    ),
                                  )
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Siapa yang membuat',
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Quick Sand',
                                      fontSize: 20,
                                      color: Colors.white
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'E-St',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Quick Sand',
                                          fontWeight: FontWeight.w700,
                                          color: btnColor,
                                          decoration: TextDecoration.none
                                      ),
                                    ),
                                    Text(
                                      'arby',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Quick Sand',
                                          fontWeight: FontWeight.w700,
                                          decoration: TextDecoration.none,
                                          color: whiteColor
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                                  width: MediaQuery.of(context).size.width,
                                  child: const Text(
                                    'Aplikasi E-Starby dibuat oleh siswa SMK Taruna Bhakti yang berhubungan dengan jurusan Rekayasa Perangkat Lunak sebagai bentuk tugas yang diberikan.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: 'Quick Sand',
                                        fontSize: 16,
                                        color: Colors.white
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 30),
                                  height: 120,
                                  width: 150,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/setting/flutter_icon.png',
                                        ),
                                      )
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 30),
                                  height: 180,
                                  width: 150,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/setting/figma_icon.png',
                                        ),
                                      )
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Dengan apa',
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Quick Sand',
                                      fontSize: 20,
                                      color: Colors.white
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'E-St',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Quick Sand',
                                          fontWeight: FontWeight.w700,
                                          color: btnColor,
                                          decoration: TextDecoration.none
                                      ),
                                    ),
                                    Text(
                                      'arby',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Quick Sand',
                                          fontWeight: FontWeight.w700,
                                          decoration: TextDecoration.none,
                                          color: whiteColor
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      'dibuat',
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Quick Sand',
                                          fontSize: 20,
                                          color: Colors.white
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                                  width: MediaQuery.of(context).size.width,
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: const TextSpan(
                                      style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: 'Quick Sand',
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                      children: [
                                        TextSpan(text: 'Aplikasi E-Starby dibuat menggunakan software development kit '),
                                        TextSpan(text: 'Flutter', style: TextStyle(color: Color(0xFF01B58A))),
                                        TextSpan(text: ' dan didesign menggunakan software '),
                                        TextSpan(text: 'Figma', style: TextStyle(color: Color(0xFF01B58A))),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              height: 200,
                              width: 260,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/setting/atas_dasar_starby.png',
                                    ),
                                  )
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Atas dasar apa',
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Quick Sand',
                                      fontSize: 20,
                                      color: Colors.white
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'E-St',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Quick Sand',
                                          fontWeight: FontWeight.w700,
                                          color: btnColor,
                                          decoration: TextDecoration.none
                                      ),
                                    ),
                                    Text(
                                      'arby',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Quick Sand',
                                          fontWeight: FontWeight.w700,
                                          decoration: TextDecoration.none,
                                          color: whiteColor
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      'dibuat',
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Quick Sand',
                                          fontSize: 20,
                                          color: Colors.white
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                                  width: MediaQuery.of(context).size.width,
                                  child: const Text(
                                    'Aplikasi ini dibuat untuk meningkatkan literasi siswa siswi SMK Taruna Bhakti dengan memudahkan peminjaman buku dan memberikan fitur pembacaan online yang bisa dilakukan kapan saja dan dimana saja',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: 'Quick Sand',
                                        fontSize: 16,
                                        color: Colors.white
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]
        ),
      ),
    );
  }
}
