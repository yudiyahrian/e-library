import 'package:e_library/shared/interested.dart';
import 'package:flutter/material.dart';
import 'package:e_library/shared/colors.dart';
import 'package:e_library/models/interest.dart';

class OnboardFourth extends StatelessWidget {
  OnboardFourth({Key? key}) : super(key: key);

  List<InterestModel> interest = [
    InterestModel(name: 'Fantasy'),
    InterestModel(name: 'Adventure'),
    InterestModel(name: 'Psychology'),
    InterestModel(name: 'Slice of Life'),
    InterestModel(name: 'Isekai'),
    InterestModel(name: 'Horror'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
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
        SizedBox(
          height: 300,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.count(
                crossAxisCount: 3,
              children: interest.map((interest) => Interested(
                  interest: interest
              )).toList()
            ),
          ),
        )
      ],
    );
  }
}
