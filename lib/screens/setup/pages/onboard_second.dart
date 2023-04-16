import 'package:flutter/material.dart';
import 'package:e_library/shared/colors.dart';


class OnboardSecond extends StatelessWidget {
  const OnboardSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/onboard_second.png', height: 230,),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Text(
            'Read Anywhere you want',
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
