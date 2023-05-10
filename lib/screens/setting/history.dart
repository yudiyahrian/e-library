import 'package:e_library/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:e_library/models/book.dart';
import 'package:e_library/shared/books.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {

  List<HistoryBook> historyBook = [
    HistoryBook(image: 'percy_jackson.png', title: 'Percy Jackson And The Olympians', genre: 'Fantasy, Action', lastRead: '10/10/2023', page: '36'),
    HistoryBook(image: 'percy_jackson.png', title: 'Percy Jackson And The Olympians', genre: 'Fantasy, Action', lastRead: '10/10/2023', page: '36'),
    HistoryBook(image: 'percy_jackson.png', title: 'Percy Jackson And The Olympians', genre: 'Fantasy, Action', lastRead: '10/10/2023', page: '36'),
  ];

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
              height: 62,
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
                      'History',
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
            SizedBox(
              height: MediaQuery.of(context).size.height - 130,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Text(
                          'This Week',
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Quick Sand',
                              fontSize: 16,
                              color: greyColor
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: historyBook.map((book) => HistoryBookList(book: book)).toList(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Text(
                          'March 2023',
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Quick Sand',
                              fontSize: 16,
                              color: greyColor
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: historyBook.map((book) => HistoryBookList(book: book)).toList(),
                  )
                ],
              ),
            ),
          ]
        ),
      ),
    );
  }
}
