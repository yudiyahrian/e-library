import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:e_library/models/carousel.dart';

final List<CarouselModel> imgList = [
  CarouselModel(
      image: 'assets/images/carousel/adventure.jpg',
      genre: "Adventure",
      description: "description"),
  CarouselModel(
      image: 'assets/images/carousel/Comedy.jpg',
      genre: "Comedy",
      description: "description"),
  CarouselModel(
      image: 'assets/images/carousel/fantasy.jpg',
      genre: "Fantasy",
      description: "description"),
  CarouselModel(
      image: 'assets/images/carousel/history.jpg',
      genre: "History",
      description: "description"),
  // CarouselModel(
  //     image: 'assets/images/carousel/horror_bg.jpg',
  //     genre: "Horror",
  //     description: "description"),
  CarouselModel(
      image: 'assets/images/carousel/inspiration.jpg',
      genre: "Inspirasi",
      description: "description"),
  CarouselModel(
      image: 'assets/images/carousel/Romance.jpg',
      genre: "Romace",
      description: "description"),
  CarouselModel(
      image: 'assets/images/carousel/Sci-Fi.jpg',
      genre: "Sci-Fi",
      description: "description"),
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
  margin: const EdgeInsets.all(5.0),
  child: ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(5.0)),
      child: Stack(
        children: <Widget>[
          Image.asset(item.image, fit: BoxFit.cover, width: 1000.0),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.genre,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    item.description,
                    style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  )
                ],
              ),
            ),
          ),
        ],
      )),
))
    .toList();

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Carousel();
  }
}

class _Carousel extends State<Carousel> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Flexible(
        flex: 1,
        child: CarouselSlider(
          items: imageSliders,
          carouselController: _controller,
          options: CarouselOptions(
              height: 600,
              autoPlay: true,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: imgList.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => _controller.animateToPage(entry.key),
            child: Container(
              width: 5.0,
              height: 5.0,
              margin:
              const EdgeInsets.symmetric(vertical: 5.0, horizontal: 4.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black)
                      .withOpacity(_current == entry.key ? 0.9 : 0.4)),
            ),
          );
        }).toList(),
      ),
    ]);
  }
}
//
// class Book extends StatelessWidget {
//   const Book({super.key});
//
//   Widget _music(BuildContext context,
//       {required image, required title, required artist}) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 50),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             margin: const EdgeInsets.only(right: 10, bottom: 5),
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//                     image: NetworkImage(image), fit: BoxFit.fitHeight),
//                 borderRadius: BorderRadius.circular(4)),
//             width: 120,
//             height: 120,
//           ),
//           const SizedBox(
//             height: 4,
//           ),
//           Text(
//             title,
//             style: const TextStyle(
//                 fontFamily: "Poppins",
//                 letterSpacing: 1,
//                 fontWeight: FontWeight.w600,
//                 fontSize: 10,
//                 color: Color(0xFFe0e0e0)),
//           ),
//           Text(
//             artist,
//             style: const TextStyle(
//                 fontFamily: "Poppins",
//                 fontSize: 9,
//                 letterSpacing: 1,
//                 fontWeight: FontWeight.w500,
//                 color: Color(0xFFa1a1a1)),
//           ),
//         ],
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             const SizedBox(
//               width: 15,
//             ),
//             _music(
//               context,
//               image:
//               "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcT4JZ9BkhH3Ih10pX0r4QTrUqBA5YUA_-WWPFG3sDFO2rjiBO_ewE7GLn2yW0NWbd84ITPvKZbwryGTNvI-9UCLh6ZUUhF0fAWx54peSUI&usqp=CAE",
//               title: "Boneka",
//               artist: "Asli Garut",
//             ),
//             _music(
//               context,
//               image:
//               "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRCizoEjKYEocb8lYXQ9ZohF1ho_gqfCPNkmh-dGtI0dRjVM8_FY5HFMDE5MfQ_6ul013rADlFWQZ5G0l3Sn3UWfr6B2mDEXbEsm6HctWCsicozLroQPOtl&usqp=CAE",
//               title: "Habang Buhay",
//               artist: "Zack Tabudlo",
//             ),
//             _music(
//               context,
//               image:
//               "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcT4JZ9BkhH3Ih10pX0r4QTrUqBA5YUA_-WWPFG3sDFO2rjiBO_ewE7GLn2yW0NWbd84ITPvKZbwryGTNvI-9UCLh6ZUUhF0fAWx54peSUI&usqp=CAE",
//               title: "Boneka",
//               artist: "Asli Garut",
//             ),
//             _music(
//               context,
//               image:
//               "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRCizoEjKYEocb8lYXQ9ZohF1ho_gqfCPNkmh-dGtI0dRjVM8_FY5HFMDE5MfQ_6ul013rADlFWQZ5G0l3Sn3UWfr6B2mDEXbEsm6HctWCsicozLroQPOtl&usqp=CAE",
//               title: "Habang Buhay",
//               artist: "Zack Tabudlo",
//             ),
//             _music(
//               context,
//               image:
//               "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcT4JZ9BkhH3Ih10pX0r4QTrUqBA5YUA_-WWPFG3sDFO2rjiBO_ewE7GLn2yW0NWbd84ITPvKZbwryGTNvI-9UCLh6ZUUhF0fAWx54peSUI&usqp=CAE",
//               title: "Boneka",
//               artist: "Asli Garut",
//             ),
//             _music(
//               context,
//               image:
//               "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRCizoEjKYEocb8lYXQ9ZohF1ho_gqfCPNkmh-dGtI0dRjVM8_FY5HFMDE5MfQ_6ul013rADlFWQZ5G0l3Sn3UWfr6B2mDEXbEsm6HctWCsicozLroQPOtl&usqp=CAE",
//               title: "Habang Buhay",
//               artist: "Zack Tabudlo",
//             ),
//             _music(
//               context,
//               image:
//               "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcT4JZ9BkhH3Ih10pX0r4QTrUqBA5YUA_-WWPFG3sDFO2rjiBO_ewE7GLn2yW0NWbd84ITPvKZbwryGTNvI-9UCLh6ZUUhF0fAWx54peSUI&usqp=CAE",
//               title: "Boneka",
//               artist: "Asli Garut",
//             ),
//             _music(
//               context,
//               image:
//               "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRCizoEjKYEocb8lYXQ9ZohF1ho_gqfCPNkmh-dGtI0dRjVM8_FY5HFMDE5MfQ_6ul013rADlFWQZ5G0l3Sn3UWfr6B2mDEXbEsm6HctWCsicozLroQPOtl&usqp=CAE",
//               title: "Habang Buhay",
//               artist: "Zack Tabudlo",
//             ),
//             const SizedBox(
//               width: 5,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
