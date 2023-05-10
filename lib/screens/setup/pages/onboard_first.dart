import 'package:e_library/shared/colors.dart';
import 'package:flutter/material.dart';

class OnboardFirst extends StatelessWidget {
  const OnboardFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        Image.asset('assets/onboard_first.png', height: 230,),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Text(
            'Let’s Cultivate Reading',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 38,
                fontFamily: 'Quick Sand',
                fontWeight: FontWeight.w700,
                color: whiteColor,
                decoration: TextDecoration.none
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            'Worem ipsum dolor sit consectur consectetur elit rasom.',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Quick Sand',
                fontWeight: FontWeight.w400,
                color: whiteColor,
                decoration: TextDecoration.none
            ),
          ),
        ),
      ],
    );
  }
}
