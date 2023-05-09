import 'package:e_library/shared/books.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:e_library/models/book.dart';

class Detail extends StatefulWidget {
  final Book book;
  const Detail({Key? key, required this.book}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        bottom: false,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xFF080F0F),
                  Color(0xFF1A3130),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          child: ListView(
            children: [
              Container(
                    width: MediaQuery.of(context).size.width,
                    height: 510,
                    child: Stack(
                        children: <Widget>[
                          Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 500,
                                  child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: MediaQuery.of(context).size.width,
                                                height: 464,
                                                child: Stack(
                                                    children: <Widget>[
                                                      Positioned(
                                                          top: 0,
                                                          left: 0,
                                                          child: Container(
                                                              width: MediaQuery.of(context).size.width,
                                                              height: 464,
                                                              decoration: const BoxDecoration(
                                                                borderRadius : BorderRadius.only(
                                                                  topLeft: Radius.circular(0),
                                                                  topRight: Radius.circular(0),
                                                                  bottomLeft: Radius.circular(50),
                                                                  bottomRight: Radius.circular(50),
                                                                ),
                                                                color : Color.fromRGBO(0, 154, 117, 1),
                                                              )
                                                          )
                                                      ),
                                                    ]
                                                )
                                            )
                                        ),Positioned(
                                            top: 428,
                                            left: 140,
                                            child: Container(
                                                width: 130,
                                                height: 72.02381134033203,
                                                child: Stack(
                                                    children: <Widget>[
                                                      Positioned(
                                                          top: 0,
                                                          left: 0,
                                                          child: SvgPicture.asset(
                                                              'assets/ellipse12.svg',
                                                              semanticsLabel: 'ellipse12'
                                                          )
                                                      ),
                                                    ]
                                                )
                                            )
                                        ),
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 105,
                                                height: 50,
                                                child: Stack(
                                                    children: <Widget>[
                                                      TextButton(
                                                          onPressed: (){
                                                            Navigator.pop(context);
                                                          },
                                                          child: Row(
                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                            children: [
                                                              Container(
                                                                margin: const EdgeInsets.only(right: 5, left: 5),
                                                                width: 25,
                                                                height: 25,
                                                                decoration: const BoxDecoration(
                                                                    color: Colors.white,
                                                                    shape: BoxShape.circle
                                                                ),
                                                                child: const Icon(Icons.arrow_back_ios_outlined, size: 15, color: Color(0XFF01B58A)),
                                                              ),
                                                              const Text(
                                                                'Back',
                                                                textAlign: TextAlign.center,
                                                                style: TextStyle(
                                                                    color: Color.fromRGBO(255, 255, 255, 1),
                                                                    fontFamily: 'Quick Sand',
                                                                    fontSize: 22,
                                                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                                    fontWeight: FontWeight.w700,
                                                                    height: 1
                                                                ),
                                                              )
                                                            ],
                                                          )
                                                      ),
                                                    ]
                                                )
                                            )
                                        ),
                                        Positioned(
                                            top: 70,
                                            child: SizedBox(
                                              width: MediaQuery.of(context).size.width,
                                              height: 250,
                                              child: DetailBookImage(image: [
                                                widget.book.image,
                                                widget.book.image,
                                                widget.book.image,
                                              ],
                                              )
                                            ),
                                            // child: SizedBox(
                                            //   width: MediaQuery.of(context).size.width,
                                            //     child: const Carousel()
                                            // )
                                        ),
                                        Positioned(
                                            top: 310,
                                            left: 58,
                                            child: SingleChildScrollView(
                                              child: Column(
                                                  children: <Widget>[
                                                    Text(
                                                      widget.book.title,
                                                        textAlign: TextAlign.center,
                                                        style: const TextStyle(
                                                          color: Colors.white,
                                                          fontFamily: 'Quick Sand',
                                                          fontSize: 27,
                                                          decoration: TextDecoration.none,
                                                          fontWeight: FontWeight.w700,
                                                          height: 2
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 300,
                                                      child: Text(
                                                        widget.book.description,
                                                        textAlign: TextAlign.center,
                                                        style: const TextStyle(
                                                          color: Colors.white,
                                                          fontFamily: 'Quick Sand',
                                                          fontSize: 12,
                                                          decoration: TextDecoration.none,
                                                          fontWeight: FontWeight.w600,
                                                          height: 1
                                                      ),
                                                      ),
                                                    ),
                                                  ]
                                              ),
                                            )
                                        ),
                                      ]
                                  )
                              )
                          ),
                          Positioned(
                              top: 434,
                              left: 176,
                              child: Container(
                                  width: 60,
                                  height: 60,
                                  child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 60,
                                                height: 60,
                                                child: Stack(
                                                    children: <Widget>[
                                                      Positioned(
                                                          top: 0,
                                                          left: 0,
                                                          child: Container(
                                                              width: 60,
                                                              height: 60,
                                                              decoration: const BoxDecoration(
                                                                color : Color.fromRGBO(255, 255, 255, 1),
                                                                borderRadius : BorderRadius.all(Radius.elliptical(60, 60)),
                                                              )
                                                          )
                                                      ),Positioned(
                                                          top: 7,
                                                          left: 6,
                                                          child: Container(
                                                              width: 48,
                                                              height: 46,
                                                              child: Stack(
                                                                  children: <Widget>[
                                                                    Positioned(
                                                                        top: 0,
                                                                        left: 0,
                                                                        child: Container(
                                                                            width: 48,
                                                                            height: 43,
                                                                            decoration: const BoxDecoration(
                                                                              borderRadius : BorderRadius.all(Radius.elliptical(48, 43.73332977294922)),
                                                                            )
                                                                        )
                                                                    ),
                                                                    const Positioned(
                                                                        top: 2,
                                                                        left: 2,
                                                                        child: Icon(Icons.favorite, size: 45,)
                                                                    ),
                                                                  ]
                                                              )
                                                          )
                                                      ),
                                                    ]
                                                )
                                            )
                                        ),
                                      ]
                                  )
                              )
                          ),
                        ]
                    )
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Rating',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Quick Sand',
                            fontSize: 19,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w700,
                        ),
                      ),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 3),
                            child: Icon(Icons.star, color: Color(0xFFFFB800),),
                          ),
                          Text(
                            widget.book.rating,
                            style: const TextStyle(
                                color: Colors.white,
                                fontFamily: 'Quick Sand',
                                fontSize: 16,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        const Text(
                          'Author',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Quick Sand',
                            fontSize: 19,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          widget.book.author,
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'Quick Sand',
                            fontSize: 16,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        'Genre',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Quick Sand',
                          fontSize: 19,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        widget.book.genre,
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Quick Sand',
                          fontSize: 16,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Date',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Quick Sand',
                          fontSize: 19,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        widget.book.date,
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Quick Sand',
                          fontSize: 16,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Column(
                      children: [
                        const Text(
                          'Pages',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Quick Sand',
                            fontSize: 19,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          widget.book.page,
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'Quick Sand',
                            fontSize: 16,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 3),
                      child: Text(
                        'Description',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Quick Sand',
                            fontSize: 20,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w700,
                            height: 2
                        ),
                      ),
                    ),
                    Text(
                      widget.book.description,
                      style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Quick Sand',
                          fontSize: 15,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.normal,
                          height: 2
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: const Color(0xf20B1515),
        height: 70,
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: (){},
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(10)),
                      backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFFFFB800)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                          )
                      )
                  ),
                  child: const Text(
                      'Borrow Book',
                    style: TextStyle(
                        color: Color(0xFF230B34),
                        fontFamily: 'Quick Sand',
                        fontSize: 18,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w600,
                    ),
                  )
              ),
              ElevatedButton(
                  onPressed: (){},
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.symmetric(vertical: 10, horizontal: 15)),
                      backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF009A75)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )
                      )
                  ),
                  child: const Text(
                      'Read Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quick Sand',
                      fontSize: 18,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w600,
                    ),
                  )
              )
            ]
        ),
      ),
    );
  }
}
