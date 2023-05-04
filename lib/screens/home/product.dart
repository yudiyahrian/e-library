import 'package:flutter/material.dart';
import 'package:e_library/models/book.dart';
import 'package:e_library/shared/books.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {

  List<PopularBook> popularBook = [
    PopularBook(image: 'the_art_of_loving.png', title: 'The Art Of Loving', description: 'lorem asjdhkjsnbfcadsfjkmsenrbvawecauibxhdjkhawjbdghasbydas.tsdjnAD <SMDNafjsakh fsahfsjafasnjfhsjfnms,f', genre: 'Romance', ranking: '1'),
    PopularBook(image: 'the_art_of_loving.png', title: 'The Art Of Loving', description: 'lorem asjdhkjsnbfcadsfjkmsenrbvawecauibxhdjkhawjbdghasbydas.tsdjnAD <SMDNafjsakh fsahfsjafasnjfhsjfnms,f', genre: 'Romance', ranking: '2'),
    PopularBook(image: 'the_art_of_loving.png', title: 'The Art Of Loving', description: 'lorem asjdhkjsnbfcadsfjkmsenrbvawecauibxhdjkhawjbdghasbydas.tsdjnAD <SMDNafjsakh fsahfsjafasnjfhsjfnms,f', genre: 'Romance', ranking: '3'),
  ];

  List<Book> books = [
    Book(image: 'the_art_of_loving.png', title: 'The Art Of Loving', description: 'lorem asjdhkjsnbfcadsfjkmsenrbvawecauibxhdjkhawjbdghasbydas.tsdjnAD <SMDNafjsakh fsahfsjafasnjfhsjfnms,f'),
    Book(image: 'filosopi_teras.png', title: 'Filosofi Teras', description: 'lorem asjdhkjsnbfcadsfjkmsenrbvawecauibxhdjkhawjbdghasbydas.tsdjnAD <SMDNafjsakh fsahfsjafasnjfhsjfnms,f'),
    Book(image: 'seribu_wajah_ayah.png', title: 'Seribu Wajah Ayah', description: 'lorem asjdhkjsnbfcadsfjkmsenrbvawecauibxhdjkhawjbdghasbydas.tsdjnAD <SMDNafjsakh fsahfsjafasnjfhsjfnms,f'),
    Book(image: 'psychology_of_money.png', title: 'Psychology Of Money', description: 'lorem asjdhkjsnbfcadsfjkmsenrbvawecauibxhdjkhawjbdghasbydas.tsdjnAD <SMDNafjsakh fsahfsjafasnjfhsjfnms,f'),
    Book(image: 'blue_lock.png', title: 'Blue Lock', description: 'lorem asjdhkjsnbfcadsfjkmsenrbvawecauibxhdjkhawjbdghasbydas.tsdjnAD <SMDNafjsakh fsahfsjafasnjfhsjfnms,f'),
    Book(image: 'mata_rahasia_pulau.png', title: 'Mata dan rahasia pulau gapi', description: 'lorem asjdhkjsnbfcadsfjkmsenrbvawecauibxhdjkhawjbdghasbydas.tsdjnAD <SMDNafjsakh fsahfsjafasnjfhsjfnms,f'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFF1f1545),
      // appBar: AppBar(
      //   backgroundColor: const Color(0xFF1f1545),
      //   elevation: 0.0,
      // ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            colors: <Color>[
              Color(0xff0b1617),
              Color(0xff335f5c),
            ],
            stops: <double>[0, 1],
          ),
        ),
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  color: const Color(0XB311201F),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 5, 10, 0),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 12,
                        child: TextField(
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                              isDense: true,
                              contentPadding: const EdgeInsets.all(1),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(80.0),
                                borderSide: BorderSide.none,
                              ),
                              hintText: "Titles, authors or topics . . . .",
                              hintStyle: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF4E4E4E),
                                  fontSize: 17
                              ),
                              prefixIcon: const Icon(Icons.search, size: 30,),
                              prefixIconColor: Color(0xFF4E4E4E)),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Flexible(
                          flex: 2,
                          child: Image.asset('assets/New-Icon.png', height: 50, fit: BoxFit.fitHeight,)
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  const Text(
                    'Top Romance',
                    style: TextStyle(
                        fontSize: 24,
                        letterSpacing: 3,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFF7FDFD)
                    ),
                  ),
                  const Spacer(),
                  Container(
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  Text(
                    '8 Books',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                    ),
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