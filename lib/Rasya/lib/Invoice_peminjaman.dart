import 'package:flutter/material.dart';

class Inoice_peminjaman extends StatefulWidget {
  const Inoice_peminjaman({super.key});

  @override
  State<Inoice_peminjaman> createState() => _Inoice_peminjamanState();
}

class _Inoice_peminjamanState extends State<Inoice_peminjaman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xff1F3B3A),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/icon-starby.png",
                    width: 55.0,
                    height: 55.0,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'E-St',
                        style: TextStyle(
                            fontSize: 38,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff01B58A),
                            decoration: TextDecoration.none),
                      ),
                      Text(
                        'arby',
                        style: TextStyle(
                          fontSize: 38,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Borrow Invoice",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: 'Quicksand bold',
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "April 25, 2023",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand bold',
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    "#00618575",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand bold',
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Color(0xff01B58A),
                thickness: 2,
                indent: 62,
                endIndent: 62,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  children: const [
                    ListTile(
                      title: Text(
                        "Book :",
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Quicksand bold',
                          fontSize: 14,
                        ),
                      ),
                      subtitle: Text(
                        "Filosofi Teras 2020",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'quicksand bold',
                          fontSize: 18,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Pick-Up Date :",
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Quicksand bold',
                          fontSize: 14,
                        ),
                      ),
                      subtitle: Text(
                        "27/04/2023",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'quicksand bold',
                          fontSize: 18,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Return Time :",
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Quicksand bold',
                          fontSize: 14,
                        ),
                      ),
                      subtitle: Text(
                        "3 Days",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'quicksand bold',
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              SizedBox(
                width: 300,
                height: 42,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff01B58A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Edit Profile',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
