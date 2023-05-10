import 'package:flutter/material.dart';
import 'package:e_library/models/book.dart';
import 'package:e_library/shared/books.dart';
import 'package:e_library/models/genre.dart';
import 'package:e_library/shared/genres.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {

  List<Genre> genres = [
    Genre(name: 'All', active: true),
    Genre(name: 'Psychology', active: false),
    Genre(name: 'Horror', active: false),
    Genre(name: 'Romance', active: false),
    Genre(name: 'Adventure', active: false),
    Genre(name: 'Fantasy', active: false),
    Genre(name: 'Isekai', active: false),
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
      extendBody: true,
      // backgroundColor: const Color(0xFF1f1545),
      // appBar: AppBar(
      //   backgroundColor: const Color(0xFF1f1545),
      //   elevation: 0.0,
      // ),
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: Container(
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    color: const Color(0XB311201F),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: genres.map((genre) => HorizontalGenre(genre: genre)).toList(),
                    ),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Text(
                      'Favorites',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                      ),
                    ),
                    Spacer(),
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
              SizedBox(
                height: MediaQuery.of(context).size.height - 270,
                child: ListView(
                  children: books.map((book) => BookList(book: book)).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}