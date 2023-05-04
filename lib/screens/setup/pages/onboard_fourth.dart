import 'package:e_library/shared/interested.dart';
import 'package:flutter/material.dart';
import 'package:e_library/shared/colors.dart';
import 'package:e_library/models/interest.dart';

class OnboardFourth extends StatelessWidget {
  OnboardFourth({Key? key}) : super(key: key);

  final ScrollController _controller = ScrollController();

  List<InterestModel> interest = [
    InterestModel(name: 'Fantasy', image: 'fantasy.png', textColor: const Color(0XFF39696D), bgColor: const Color(0XFFE3FCFF), borderColor: const Color(0XFF44777B)),
    InterestModel(name: 'Adventure', image: 'adventure.png', textColor: const Color(0XFFD0A24E), bgColor: const Color(0XFFFCEDD0), borderColor: const Color(0XFFE3B25A)),
    InterestModel(name: 'History', image: 'history.png', textColor: const Color(0XFF454545), bgColor: const Color(0XFFE0E0E0), borderColor: const Color(0XFF454545)),
    InterestModel(name: 'Romance', image: 'romance.png', textColor: const Color(0XFFA86170), bgColor: const Color(0XFFF4E2E6), borderColor: const Color(0XFFA86170)),
    InterestModel(name: 'Isekai', image: 'isekai.png', textColor: const Color(0XFF4F67A9), bgColor: const Color(0XFFE1E7FC), borderColor: const Color(0XFF6A88D8)),
    InterestModel(name: 'Horror', image: 'horror.png', textColor: const Color(0XFF686E7D), bgColor: const Color(0XFFF4F5FC), borderColor: const Color(0XFF686E7D)),
    InterestModel(name: 'Comedy', image: 'comedy.png', textColor: const Color(0XFFFFBE39), bgColor: const Color(0XFFFDFFAD), borderColor: const Color(0XFFF6C35A)),
    InterestModel(name: 'Psychology', image: 'psychology.png', textColor: const Color(0XFF451E91), bgColor: const Color(0XFF8A7DA4), borderColor: const Color(0XFF643BB6)),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/onboard_fourth.png', height: 180,),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Text(
            'Choose what you are interested in',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30,
                fontFamily: 'Quick Sand',
                fontWeight: FontWeight.w700,
                color: whiteColor,
                decoration: TextDecoration.none
            ),
          ),
        ),
        Container(
          height: 134,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: RawScrollbar(
            controller: _controller,
            thumbColor: btnColor,
            trackColor: const Color(0XFFD9D9D9),
            trackRadius: const Radius.circular(10),
            radius: const Radius.circular(10),
            trackVisibility: true,
            thumbVisibility: true,
            thickness: 4,
            child: SingleChildScrollView(
              controller: _controller,
              child: GridView.count(
                shrinkWrap: true,
                padding: EdgeInsets.only(right: 5),
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                children: interest.map((interest) => Interested(
                  interest: interest,
                )).toList(),
              ),
            ),
          ),
        ),

      ],
    );
  }
}
