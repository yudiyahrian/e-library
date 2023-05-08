import 'package:flutter/material.dart';

class carousel_book extends StatelessWidget {
  const carousel_book({super.key});
  Widget _book(BuildContext context,
      {required image, required title, required artist, required pressed}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      child: TextButton(
        onPressed: pressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10, bottom: 5),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.fitHeight,
                  ),
                  borderRadius: BorderRadius.circular(4)),
              width: 125,
              height: 175,
            ),
            const SizedBox(
              height: 2,
            ),
            Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontFamily: "Quicksand medium",
                      // letterSpacing: 1,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: Color(0xFFe0e0e0)),
                ),
                Text(
                  artist,
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

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 15,
            ),
            // book 1
            _book(
              context,
              image: "assets/images/book/almond.jpg",
              title: "Boneka",
              artist: "Asli Garut",
              pressed: () {},
            ),
            // book 2
            _book(
              context,
              image: "assets/images/book/areksa.jpg",
              title: "Boneka",
              artist: "Asli Garut",
              pressed: () {},
            ),
            // book 3
            _book(
              context,
              image: "assets/images/book/bahagia.jpg",
              title: "Boneka",
              artist: "Asli Garut",
              pressed: () {},
            ),
            // book 4
            _book(
              context,
              image: "assets/images/book/blue lock.jpg",
              title: "Boneka",
              artist: "Asli Garut",
              pressed: () {},
            ),
            // book 5
            _book(
              context,
              image: "assets/images/book/conspirata.jpg",
              title: "Boneka",
              artist: "Asli Garut",
              pressed: () {},
            ),
            // book 6
            _book(
              context,
              image: "assets/images/book/crying in H mart.jpg",
              title: "Boneka",
              artist: "Asli Garut",
              pressed: () {},
            ),
            // book 7
            _book(
              context,
              image: "assets/images/book/filosofi.jpg",
              title: "Boneka",
              artist: "Asli Garut",
              pressed: () {},
            ),
            // book 8
            _book(
              context,
              image: "assets/images/book/home sweet loan.jpg",
              title: "Boneka",
              artist: "Asli Garut",
              pressed: () {},
            ),
            // book 9
            _book(
              context,
              image: "assets/images/book/hujan.jpg",
              title: "Boneka",
              artist: "Asli Garut",
              pressed: () {},
            ),
            // book 10
            _book(
              context,
              image: "assets/images/book/kau sedang terbentuk.jpg",
              title: "Boneka",
              artist: "Asli Garut",
              pressed: () {},
            ),
            // book 11
            // _book(
            //   context,
            //   image: "assets/images/book/lokananta.jpg",
            //   title: "Boneka",
            //   artist: "Asli Garut",
            //   pressed: () {},
            // ),
            // book 12
            _book(
              context,
              image: "assets/images/book/luka cinta.jpg",
              title: "Boneka",
              artist: "Asli Garut",
              pressed: () {},
            ),
            // book 12
            _book(
              context,
              image: "assets/images/book/mata dan rahasia pulau gapi.jpg",
              title: "Boneka",
              artist: "Asli Garut",
              pressed: () {},
            ),
            // book 13
            // _book(
            //   context,
            //   image: "assets/images/book/matt &  you.jpg",
            //   title: "Boneka",
            //   artist: "Asli Garut",
            //   pressed: () {},
            // ),
            // book 14
            _book(
              context,
              image: "assets/images/book/Mesir kuno.jpg",
              title: "Boneka",
              artist: "Asli Garut",
              pressed: () {},
            ),
            // book 15
            _book(
              context,
              image: "assets/images/book/my boring life.jpg",
              title: "Boneka",
              artist: "Asli Garut",
              pressed: () {},
            ),
            // book 16
            _book(
              context,
              image: "assets/images/book/negeri.jpg",
              title: "Boneka",
              artist: "Asli Garut",
              pressed: () {},
            ),
            // book 17
            _book(
              context,
              image: "assets/images/book/pesona dione.jpg",
              title: "Boneka",
              artist: "Asli Garut",
              pressed: () {},
            ),
            // book 18
            _book(
              context,
              image: "assets/images/book/Psychology of money.png",
              title: "Boneka",
              artist: "Asli Garut",
              pressed: () {},
            ),
            // book 19
            // _book(
            //   context,
            //   image: "assets/images/book/sapiens.jpg",
            //   title: "Boneka",
            //   artist: "Asli Garut",
            //   pressed: () {},
            // ),
            // book 20
            _book(
              context,
              image: "assets/images/book/Seribu Wajah.jpg",
              title: "Boneka",
              artist: "Asli Garut",
              pressed: () {},
            ),
            // book 21
            // _book(
            //   context,
            //   image: "assets/images/book/si anak  kkuat.jpg",
            //   title: "Boneka",
            //   artist: "Asli Garut",
            //   pressed: () {},
            // ),
            // book 22
            _book(
              context,
              image: "assets/images/book/si anak pintar.jpg",
              title: "Boneka",
              artist: "Asli Garut",
              pressed: () {},
            ),
            // book 23
            _book(
              context,
              image: "assets/images/book/si anak spesial.jpg",
              title: "Boneka",
              artist: "Asli Garut",
              pressed: () {},
            ),
            // book 24
            _book(
              context,
              image: "assets/images/book/tentang kamu.jpg",
              title: "Boneka",
              artist: "Asli Garut",
              pressed: () {},
            ),
            // book 25
            _book(
              context,
              image: "assets/images/book/the art of loving.jpg",
              title: "Boneka",
              artist: "Asli Garut",
              pressed: () {},
            ),
            const SizedBox(
              width: 5,
            ),
          ],
        ),
      ),
    );
  }
}
