import 'package:e_library/screens/home/pages/detail.dart';
import 'package:e_library/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:e_library/models/book.dart';
import 'package:page_transition/page_transition.dart';

class BookList extends StatelessWidget {
  final Book book;
  const BookList({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, PageTransition(
        type: PageTransitionType.fade,
        child: Detail(book: book,),
        isIos: true,
        reverseDuration: const Duration(milliseconds: 300),
        duration: const Duration(milliseconds: 400),
        )
        );
      },
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20,10, 0, 10),
            child: Container(
              height: 120,
              width: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage('assets/${book.image}'),
                      fit: BoxFit.fill
                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: 1.5,
              height: 95,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5)
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width - 160,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  book.title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 169,
                    height: 90,
                    child: Text(
                      book.description,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HorizontalBookList extends StatelessWidget {
  final Book book;
  const HorizontalBookList({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      child: TextButton(
        onPressed: (){
          Navigator.push(context, PageTransition(
            type: PageTransitionType.fade,
            child: Detail(book: book),
            isIos: true,
            reverseDuration: const Duration(milliseconds: 300),
            duration: const Duration(milliseconds: 400),
          ),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10, bottom: 5),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/${book.image}'),
                    fit: BoxFit.fitHeight,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              width: 125,
              height: 175,
            ),
            const SizedBox(
              height: 2,
            ),
            Column(
              children: [
                Text(
                  book.title,
                  style: const TextStyle(
                      fontFamily: "Quicksand medium",
                      // letterSpacing: 1,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: Color(0xFFe0e0e0)),
                ),
                Text(
                  book.author,
                  style: const TextStyle(
                      fontFamily: "Quicksand",
                      fontSize: 12,
                      // letterSpacing: 10,
                      // fontWeight: FontWeight.w500,
                      color: Color(0xFFa1a1a1)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class PopularBookList extends StatefulWidget {
  final PopularBook book;
  const PopularBookList({Key? key, required this.book}) : super(key: key);

  @override
  State<PopularBookList> createState() => _PopularBookListState();
}

class _PopularBookListState extends State<PopularBookList> {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widget.book.ranking == '1' ?
        Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
              color: btnColor,
              shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              widget.book.ranking,
              style: const TextStyle(
                fontFamily: 'Quick Sand',
                fontWeight: FontWeight.w700,
                fontSize: 24,
                color: Colors.white
              ),
            ),
          ),
        )
        : Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
            color: Color(0xFFBABABA),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              widget.book.ranking,
              style: const TextStyle(
                  fontFamily: 'Quick Sand',
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Color(0xFF0C1717)
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20,10, 0, 10),
          child: Container(
            height: 90,
            width: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    image: AssetImage('assets/${widget.book.image}'),
                    fit: BoxFit.fill
                )
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            width: 1.5,
            height: 75,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5)
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.book.title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.underline
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 230,
                height: 50,
                child: Text(
                  widget.book.description,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}


class HistoryBookList extends StatefulWidget {
  final HistoryBook book;
  const HistoryBookList({Key? key, required this.book}) : super(key: key);

  @override
  State<HistoryBookList> createState() => _HistoryBookListState();
}

class _HistoryBookListState extends State<HistoryBookList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      decoration: BoxDecoration(
          color: Color(0xFF335F5C),
          borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20,10, 0, 10),
            child: Container(
              height: 120,
              width: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage('assets/${widget.book.image}'),
                      fit: BoxFit.fill,
                  ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.width - 170,
            height: 125,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.book.title,
                  style: const TextStyle(
                      fontFamily: 'Quick Sand',
                      color: whiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    widget.book.genre,
                    style: const TextStyle(
                        fontFamily: 'Quick Sand',
                        color: greyColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.none
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    'last read ${widget.book.lastRead}',
                    style: const TextStyle(
                        fontFamily: 'Quick Sand',
                        color: greyColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.none
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Page : ${widget.book.page}',
                      style: const TextStyle(
                          fontFamily: 'Quick Sand',
                          color: greyColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.none
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InvoiceBookList extends StatelessWidget {
  final InvoiceBook book;
  const InvoiceBookList({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 5, 10, 15),
      decoration: BoxDecoration(
        color: Color(0xFF335F5C),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20,10, 0, 10),
            child: Container(
              height: 75,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: AssetImage('assets/${book.image}'),
                  fit: BoxFit.fill,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.width - 200,
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  book.title,
                  style: const TextStyle(
                      fontFamily: 'Quick Sand',
                      color: whiteColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    book.duration,
                    style: const TextStyle(
                        fontFamily: 'Quick Sand',
                        color: greyColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.none
                    ),
                  ),
                ),
                Text(
                  book.date,
                  style: const TextStyle(
                      fontFamily: 'Quick Sand',
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.none
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                book.id,
                style: const TextStyle(
                    fontFamily: 'Quick Sand',
                    color: greyColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.none
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class DetailBookImage extends StatefulWidget {
  final List image;
  const DetailBookImage({Key? key, required this.image}) : super(key: key);

  @override
  State<DetailBookImage> createState() => _DetailBookImageState();
}

class _DetailBookImageState extends State<DetailBookImage> {

  final PageController _pageController = PageController(
    initialPage: 1,
    viewportFraction: 0.6,
  );

  int _currentPage = 1;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: widget.image.length,
      physics: const BouncingScrollPhysics(),
      onPageChanged: (int page) {
        setState(() {
          _currentPage = page;
        });
      },
      itemBuilder: (BuildContext context, int index) {
        if (index == _currentPage) {
          return Container(
            margin: const EdgeInsets.only(top: 20),
            height: 300,
            child: Image.asset(
              'assets/${widget.image[index]}',
              fit: BoxFit.fitHeight,
            ),
          );
        } else {
          return Container(
            margin: const EdgeInsets.only(bottom: 20),
            width: 150,
            child: Opacity(
              opacity: 0.5,
              child: Image.asset(
                'assets/${widget.image[index]}',
                fit: BoxFit.contain,
              ),
            ),
          );
        }
      },
    );
  }
}
