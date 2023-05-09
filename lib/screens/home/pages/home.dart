import 'package:flutter/material.dart';
import 'package:e_library/shared/books.dart';
import 'package:e_library/shared/carousel.dart';
import 'package:e_library/shared/book_data.dart';


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
                        child: const Carousel()
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 10, 10, 10),
                      child: Row(
                        children: [
                          Flexible(
                            flex: 12,
                            child: SizedBox(
                              height: 40,
                              child: TextField(
                                decoration: InputDecoration(
                                    isDense: true,
                                    contentPadding: const EdgeInsets.all(1),
                                    filled: true,
                                    fillColor: const Color(0xd9FFFFFF),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(80.0),
                                      borderSide: BorderSide.none,
                                    ),
                                    hintText: "Titles, authors or topics . . . .",
                                    hintStyle:  const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xFF4E4E4E),
                                        fontSize: 16
                                    ),
                                    prefixIcon: const Icon(Icons.search, size: 30,),
                                    prefixIconColor: const Color(0xFF4E4E4E)),
                              ),
                            ),
                          ),
                          const SizedBox(width: 20,),
                          const Flexible(
                              flex: 2,
                              child: Icon(Icons.notifications_none_rounded, color: Colors.white, size: 40,)
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: [
                          const Text(
                            'For you',
                            style: TextStyle(
                                fontFamily: 'Quick Sand',
                                fontSize: 22,
                                letterSpacing: 3,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFF7FDFD)
                            ),
                          ),
                          const Spacer(),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                                color: Color(0xFF758281),
                                shape: BoxShape.circle
                            ),
                            child: const Icon(Icons.arrow_forward_ios_rounded, size: 18, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 50.0),
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: books.map((book) => HorizontalBookList(book: book)).toList()
                              ),
                            )
                        )
                    )
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: [
                          const Text(
                            'News',
                            style: TextStyle(
                                fontFamily: 'Quick Sand',
                                fontSize: 22,
                                letterSpacing: 3,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFF7FDFD)
                            ),
                          ),
                          const Spacer(),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                                color: Color(0xFF758281),
                                shape: BoxShape.circle
                            ),
                            child: const Icon(Icons.arrow_forward_ios_rounded, size: 18, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 50.0),
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: books.map((book) => HorizontalBookList(book: book)).toList()
                              ),
                            )
                        )
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        left: 10.0,
                      ),
                      child:  Row(
                        children: [
                          const Text(
                            'Top',
                            style: TextStyle(
                                fontFamily: 'Quick Sand',
                                fontSize: 22,
                                letterSpacing: 3,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFF7FDFD)
                            ),
                          ),
                          const Spacer(),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                                color: Color(0xFF758281),
                                shape: BoxShape.circle
                            ),
                            child: const Icon(Icons.arrow_forward_ios_rounded, size: 18, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 330,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Column(
                          children: popularBook.map((book) => PopularBookList(book: book)).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 30),
                      child: Row(
                        children: const [
                          Text(
                            "Genre",
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                                      left: 10.0,
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
                                    margin: const EdgeInsets.only(left: 10.0),
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
                                      left: 10.0,
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
                                    margin: const EdgeInsets.only(left: 10.0),
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
                                      left: 10.0,
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
                                    margin: const EdgeInsets.only(left: 10.0),
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
                                      left: 10.0,
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
                                    margin: const EdgeInsets.only(left: 10.0),
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
