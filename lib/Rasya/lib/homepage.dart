import 'package:flutter/material.dart';
import 'package:e_library/Rasya/lib/carousel_book.dart';
import 'package:e_library/Rasya/lib/carousel_image.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 300,
                        child: const Carousel()),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child: TextField(
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding: const EdgeInsets.all(10),
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(80.0),
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText: "Titles, authors or topics . . . .",
                                  prefixIcon: const Icon(
                                    Icons.search,
                                    size: 30,
                                  ),
                                  prefixIconColor: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10.0),
                      child: const Text(
                        "For You",
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      child: const carousel_book(),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10.0),
                      child: const Text(
                        "New",
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      child: const carousel_book(),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        left: 10.0,
                      ),
                      child: const Text(
                        "Top",
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 10, 0, 10),
                                child: Container(
                                  margin: const EdgeInsets.only(top: 10.0),
                                  height: 120,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Image.asset(
                                    "assets/images/book/negeri.jpg",
                                    width: 200.0,
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Container(
                                  width: 3,
                                  height: 95,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "book.title",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        decoration: TextDecoration.underline),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width -
                                          169,
                                      child: const Text(
                                        "book.description",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 320.0, top: 50.0),
                      child: const Text(
                        "Genre",
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Stack(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                      top: 20.0,
                                      left: 30.0,
                                    ),
                                    height: 100,
                                    width: 160,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20.0),
                                      ),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.asset(
                                        "assets/images/genre/horor.jpg",
                                        colorBlendMode: BlendMode.darken,
                                        color: Colors.black45,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Container(
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 30.0),
                                    padding: const EdgeInsets.only(
                                        top: 90.0, left: 10.0),
                                    height: 120,
                                    width: 90,
                                    child: const Text(
                                      "Horor",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                      top: 20.0,
                                      left: 20.0,
                                    ),
                                    height: 100,
                                    width: 160,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20.0),
                                      ),
                                      color: Colors.black,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.asset(
                                        "assets/images/genre/inspiration.jpg",
                                        colorBlendMode: BlendMode.darken,
                                        color: Colors.black45,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Container(
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 20.0),
                                    padding: const EdgeInsets.only(
                                        top: 90.0, left: 10.0),
                                    height: 120,
                                    width: 160,
                                    child: const Text(
                                      "Inspiration",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Stack(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                      top: 20.0,
                                      left: 30.0,
                                    ),
                                    height: 100,
                                    width: 160,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20.0),
                                      ),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.asset(
                                        "assets/images/genre/romance.jpg",
                                        colorBlendMode: BlendMode.darken,
                                        color: Colors.black45,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Container(
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 30.0),
                                    padding: const EdgeInsets.only(
                                      top: 90.0,
                                      left: 10.0,
                                    ),
                                    height: 120,
                                    width: 120,
                                    child: const Text(
                                      "Romance",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                      top: 20.0,
                                      left: 20.0,
                                    ),
                                    height: 100,
                                    width: 160,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20.0),
                                      ),
                                      color: Colors.black,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.asset(
                                        "assets/images/genre/fantasy.jpg",
                                        colorBlendMode: BlendMode.darken,
                                        color: Colors.black45,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Container(
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 20.0),
                                    padding: const EdgeInsets.only(
                                        top: 90.0, left: 10.0),
                                    height: 120,
                                    width: 90,
                                    child: const Text(
                                      "Fantasy",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Stack(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                      top: 20.0,
                                      left: 30.0,
                                    ),
                                    height: 100,
                                    width: 160,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20.0),
                                      ),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.asset(
                                        "assets/images/genre/history.jpg",
                                        colorBlendMode: BlendMode.darken,
                                        color: Colors.black45,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Container(
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 30.0),
                                    padding: const EdgeInsets.only(
                                        top: 90.0, left: 10.0),
                                    height: 120,
                                    width: 90,
                                    child: const Text(
                                      "History",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                      top: 20.0,
                                      left: 20.0,
                                    ),
                                    height: 100,
                                    width: 160,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20.0),
                                      ),
                                      color: Colors.black,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.asset(
                                        "assets/images/genre/comedy.jpg",
                                        colorBlendMode: BlendMode.darken,
                                        color: Colors.black45,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Container(
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 20.0),
                                    padding: const EdgeInsets.only(
                                        top: 90.0, left: 10.0),
                                    height: 120,
                                    width: 160,
                                    child: const Text(
                                      "Comedy",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Stack(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                      top: 20.0,
                                      left: 30.0,
                                    ),
                                    height: 100,
                                    width: 160,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20.0),
                                      ),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.asset(
                                        "assets/images/genre/sicense.jpg",
                                        colorBlendMode: BlendMode.darken,
                                        color: Colors.black45,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Container(
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 30.0),
                                    padding: const EdgeInsets.only(
                                      top: 90.0,
                                      left: 10.0,
                                    ),
                                    height: 120,
                                    width: 160,
                                    child: const Text(
                                      "Science Fiction",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                      top: 20.0,
                                      left: 20.0,
                                    ),
                                    height: 100,
                                    width: 160,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20.0),
                                      ),
                                      color: Colors.black,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.asset(
                                        "assets/images/genre/adventure.jpg",
                                        colorBlendMode: BlendMode.darken,
                                        color: Colors.black45,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Container(
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 20.0),
                                    padding: const EdgeInsets.only(
                                        top: 90.0, left: 10.0),
                                    height: 120,
                                    width: 160,
                                    child: const Text(
                                      "Adventure",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25.0),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
