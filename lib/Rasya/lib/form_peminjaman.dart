import 'package:flutter/material.dart';

class Form_Peminjaman extends StatefulWidget {
  const Form_Peminjaman({super.key});

  @override
  State<Form_Peminjaman> createState() => _Form_PeminjamanState();
}

class _Form_PeminjamanState extends State<Form_Peminjaman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        color: const Color(0xff1F3B3A),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                "Borrow Form",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: 'Quicksand bold',
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Book',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand bold',
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Book',
                      isDense: true,
                      fillColor: Colors.transparent,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0XFFD3D3D3), width: 1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0XFF01B58A), width: 1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      labelText: "Filosofi Teras 2020",
                      labelStyle: const TextStyle(
                        color: Color(0xffD3D3D3),
                        fontFamily: 'Quicksand bold',
                        fontSize: 17,
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.book,
                              size: 28,
                              color: Colors.grey,
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              width: 2,
                              height: 25,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
                      suffixIcon: const Icon(
                        Icons.lock,
                        size: 24.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Book',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand bold',
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'pick-up date',
                      isDense: true,
                      fillColor: Colors.transparent,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0XFFD3D3D3), width: 1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0XFF01B58A), width: 1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      labelText: "27/04/2023",
                      labelStyle: const TextStyle(
                        color: Color(0xffD3D3D3),
                        fontFamily: 'Quicksand bold',
                        fontSize: 17,
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.date_range_outlined,
                              size: 28,
                              color: Colors.grey,
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              width: 2,
                              height: 25,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
                      suffixIcon: const Icon(
                        Icons.date_range_rounded,
                        size: 24.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Return time',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand bold',
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: '3 Days',
                      isDense: true,
                      fillColor: Colors.transparent,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0XFFD3D3D3), width: 1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0XFF01B58A), width: 1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      labelText: "Filosofi Teras 2020",
                      labelStyle: const TextStyle(
                        color: Color(0xffD3D3D3),
                        fontFamily: 'Quicksand bold',
                        fontSize: 17,
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.history,
                              size: 28,
                              color: Colors.grey,
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              width: 2,
                              height: 25,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
                      suffixIcon: const Icon(
                        Icons.arrow_drop_down,
                        size: 24.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Center(
                    child: SizedBox(
                      width: 370,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff01B58A),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'Borrow Now',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Quicksand bold',
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Center(
                    child: SizedBox(
                      width: 370,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'Cancel',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Quicksand bold',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
