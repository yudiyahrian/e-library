import 'package:e_library/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          colors: <Color>[
            Color(0xff1A3130),
            Color(0xff080F0F),
          ],
          stops: <double>[0, 1],
        ),
      ),
      child: const Center(
        child: SpinKitWave(
          color: btnColor,
          size: 50,
        ),
      ),
    );
  }
}
