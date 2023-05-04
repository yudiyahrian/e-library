import 'package:curved_carousel/curved_carousel.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'assets/filosopi_teras.png',
  'assets/filosopi_teras.png',
  'assets/filosopi_teras.png',
];
final List<Widget> imageSliders = imgList
    .map((item) => Container(
        width: 320,
        margin: EdgeInsets.all(5.0),
        child: Image.asset(item, fit: BoxFit.contain, height: 300,),
      ))
    .toList();

class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 210,
          child: CurvedCarousel(
            viewPortSize: 0.4,
            curveScale: 10,
            itemBuilder: (context, i) {
              return SizedBox(
                child: Image.asset(imgList[i], height: 300,),
              );
            },
            itemCount: imgList.length,
          ),
        )
      ],
    );


    // return Container(
    //     child: CarouselSlider(
    //       options: CarouselOptions(
    //         autoPlay: true,
    //         enlargeCenterPage: true,
    //         viewportFraction: 0.5,
    //         aspectRatio: 1
    //       ),
    //       items: imageSliders,
    //     ),
    //   );
  }
}