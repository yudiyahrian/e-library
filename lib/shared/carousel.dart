import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:e_library/models/carousel.dart';

final List<CarouselModel> imgList = [
   CarouselModel(
      image: 'assets/images/carousel/horror-carou.jpg',
      genre: "Horror",
      description: "Horror is a genre of literature, film, and television that is meant to scare, startle, shock, and even repulse audiences. The key focus of a horror novel, horror film, or horror TV show is to elicit a sense of dread in the reader through frightening images, themes, and situations."),
  CarouselModel(
      image: 'assets/images/carousel/adventure.jpg',
      genre: "Adventure",
      description: "The adventure genre consists of books where the protagonist goes on an epic journey, either personally or geographically. Often the protagonist has a mission and faces many obstacles in his way. "),
  CarouselModel(
      image: 'assets/images/carousel/Comedy.jpg',
      genre: "Comedy",
      description: "The comedy genre is made up of books about a series of funny or comical events or scenes that are intended to make the reader laugh"),
  CarouselModel(
      image: 'assets/images/carousel/fantasy.jpg',
      genre: "Fantasy",
      description: "Fantasy fiction is a genre of writing in which the plot could not happen in real life (as we know it, at least). Often, the plot involves magic or witchcraft and takes place on another planet or in another — undiscovered — dimension of this world."),
  CarouselModel(
      image: 'assets/images/carousel/history.jpg',
      genre: "History",
      description: "historical novel, a novel that has as its setting a period of history and that attempts to convey the spirit, manners, and social conditions of a past age with realistic detail and fidelity (which is in some cases only apparent fidelity) to historical fact."),
  CarouselModel(
      image: 'assets/images/carousel/inspiration.jpg',
      genre: "Inspirasi",
      description: "This genre is an uplifting story of perseverance and hope. It follows the journey of a protagonist who faces many obstacles but never gives up on their dreams. Through their struggles, the protagonist learns valuable lessons about resilience, courage."),
  CarouselModel(
      image: 'assets/images/carousel/Romance.jpg',
      genre: "Romance",
      description: "A romance novel or romantic novel generally refers to a type of genre fiction novel which places its primary focus on the relationship and romantic love between two people, and usually has an 'emotionally satisfying and optimistic ending.'"),
  CarouselModel(
      image: 'assets/images/carousel/Sci-Fi.jpg',
      genre: "Sci-Fi",
      description: "Science fiction is often called the “literature of ideas.” Sci-fi novels include a wide variety of futuristic concepts. Since they're so imaginative, anything is possible, especially in soft sci-fi novels. A sci-fi novel can be about space, time travel, aliens, or time-traveling aliens in space."),
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          margin: const EdgeInsets.all(5.0),
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    item.image,
                    fit: BoxFit.cover,
                    width: 1000.0,
                    height: 500.0,
                    colorBlendMode: BlendMode.darken,
                    color: Colors.black45,
                  ),
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
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontFamily: 'Quick Sand'
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            item.description,
                            style: const TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                                fontFamily: 'Quicksand medium'
                                ),
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
