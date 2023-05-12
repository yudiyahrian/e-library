import 'package:flutter/material.dart';
import 'package:e_library/shared/book_data.dart';
import 'package:e_library/shared/books.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFF1f1545),
      // appBar: AppBar(
      //   backgroundColor: const Color(0xFF1f1545),
      //   elevation: 0.0,
      // ),
      body: Container(
        // color: Color(0xff1f3b3a),
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
            Stack(
              children: [
                Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  color: const Color(0XB311201F),
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
                                hintStyle: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Quick Sand',
                                    color: Color(0xFF4E4E4E),
                                    fontSize: 14),
                                prefixIcon: IconButton(
                                  icon: Icon(Icons.search),
                                  iconSize: 30,
                                  onPressed: () {
                                    setState(() {});
                                  },
                                ),
                                prefixIconColor: const Color(0xFF4E4E4E)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Flexible(
                          flex: 2,
                          child: Icon(
                            Icons.notifications_none_rounded,
                            color: Colors.white,
                            size: 40,
                          ))
                    ],
                  ),
                ),
              ],
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            //   child: Row(
            //     children: [
            //       const Text(
            //         'Top Romance',
            //         style: TextStyle(
            //             fontSize: 24,
            //             letterSpacing: 3,
            //             fontWeight: FontWeight.w700,
            //             fontFamily: 'Quick Sand',
            //             color: Color(0xFFF7FDFD)),
            //       ),
            //       const Spacer(),
            //       Container(
            //         width: 30,
            //         height: 30,
            //         decoration: const BoxDecoration(
            //             color: Color(0xFF758281), shape: BoxShape.circle),
            //         child: const Icon(Icons.arrow_forward_ios_rounded,
            //             size: 18, color: Colors.white),
            //       )
            //     ],
            //   ),
            // ),
            // SizedBox(
            //   height: 330,
            //   child: Padding(
            //     padding: const EdgeInsets.only(left: 30),
            //     child: Column(
            //       children: popularBook
            //           .map((book) => PopularBookList(book: book))
            //           .toList(),
            //     ),
            //   ),
            // ),
            Container(
              height: 360.0,
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15.0),
                    child: Column(children: [
                      Row(
                        children: [
                          const Text(
                            'Top Romance',
                            style: TextStyle(
                                fontFamily: 'Quick Sand',
                                fontSize: 22,
                                letterSpacing: 3,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFF7FDFD)),
                          ),
                          const Spacer(),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                                color: Color(0xFF758281),
                                shape: BoxShape.circle),
                            child: const Icon(Icons.arrow_forward_ios_rounded,
                                size: 18, color: Colors.white),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 8.0),
                        child: Column(
                          children: pageviewromance
                              .map((book) => PageViewRomanceList(bookR: book))
                              .toList(),
                        ),
                      )
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15.0),
                    child: Column(children: [
                      Row(
                        children: [
                          const Text(
                            'Top Horror',
                            style: TextStyle(
                                fontFamily: 'Quick Sand',
                                fontSize: 22,
                                letterSpacing: 3,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFF7FDFD)),
                          ),
                          const Spacer(),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                                color: Color(0xFF758281),
                                shape: BoxShape.circle),
                            child: const Icon(Icons.arrow_forward_ios_rounded,
                                size: 18, color: Colors.white),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 8.0),
                        child: Column(
                          children: pageviewhorror
                              .map((book) => PageViewHorrorList(bookH: book))
                              .toList(),
                        ),
                      )
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15.0),
                    child: Column(children: [
                      Row(
                        children: [
                          const Text(
                            'Top History',
                            style: TextStyle(
                                fontFamily: 'Quick Sand',
                                fontSize: 22,
                                letterSpacing: 3,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFF7FDFD)),
                          ),
                          const Spacer(),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                                color: Color(0xFF758281),
                                shape: BoxShape.circle),
                            child: const Icon(Icons.arrow_forward_ios_rounded,
                                size: 18, color: Colors.white),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 8.0),
                        child: Column(
                          children: pageviewhistory
                              .map((book) => PageViewHistoryList(bookHis: book))
                              .toList(),
                        ),
                      )
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15.0),
                    child: Column(children: [
                      Row(
                        children: [
                          const Text(
                            'Top Fantasy',
                            style: TextStyle(
                                fontFamily: 'Quick Sand',
                                fontSize: 22,
                                letterSpacing: 3,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFF7FDFD)),
                          ),
                          const Spacer(),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                                color: Color(0xFF758281),
                                shape: BoxShape.circle),
                            child: const Icon(Icons.arrow_forward_ios_rounded,
                                size: 18, color: Colors.white),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 8.0),
                        child: Column(
                          children: pageviewfantasy
                              .map((book) => PageViewFantasyList(bookFan: book))
                              .toList(),
                        ),
                      )
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15.0),
                    child: Column(children: [
                      Row(
                        children: [
                          const Text(
                            'Top Adventure',
                            style: TextStyle(
                                fontFamily: 'Quick Sand',
                                fontSize: 22,
                                letterSpacing: 3,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFF7FDFD)),
                          ),
                          const Spacer(),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                                color: Color(0xFF758281),
                                shape: BoxShape.circle),
                            child: const Icon(Icons.arrow_forward_ios_rounded,
                                size: 18, color: Colors.white),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 8.0),
                        child: Column(
                          children: pageviewadventure
                              .map((book) =>
                                  PageViewAdventureList(bookAdvent: book))
                              .toList(),
                        ),
                      )
                    ]),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text(
                    'Books',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Quick Sand',
                        color: Colors.white),
                  ),
                  const Spacer(),
                  Text(
                    '${books.length.toString()} books',
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Quick Sand',
                        color: Colors.white),
                  )
                ],
              ),
            ),
            Column(
              children: books.map((book) => BookList(book: book)).toList(),
            )
          ],
        ),
      ),
    );
  }
}
