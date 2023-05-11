import 'package:e_library/screens/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool screenStart = false;
  bool visible = false;

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1)).then((_) {
      setState(() {
        screenStart = true;
        visible = true;
      });
    });
    Future.delayed(const Duration(seconds: 3)).then((_) {
      Navigator.pushReplacement(
          context,
          PageTransition(
              child: const Wrapper(), type: PageTransitionType.fade));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xff1f3b3a),
        // decoration: const BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.topLeft,
        //     colors: <Color>[
        //       Color(0xff0b1617),
        //       Color(0xff335f5c),
        //     ],
        //     stops: <double>[0, 1],
        //   ),
        // ),
        child: Stack(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(bottom: 100, top: 180),
                child: AnimatedOpacity(
                  opacity: visible ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 600),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/New-Icon.png",
                        height: 140.0,
                        width: 140.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'E-St',
                            style: TextStyle(
                                fontSize: 55.0,
                                color: Color(0xff01b58a),
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Quick Sand'),
                          ),
                          Text(
                            'arby',
                            style: TextStyle(
                                fontSize: 55.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Quick Sand'),
                          )
                        ],
                      ),
                      Text('(Starbhak Library)',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Quicksand medium'))
                    ],
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                AnimatedPositioned(
                  bottom: screenStart ? 60 : -300,
                  right: 175,
                  height: 150,
                  width: 160,
                  duration: const Duration(milliseconds: 600),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(900.0),
                        ),
                        border: Border.all(
                            color: const Color(0xFF01B58A), width: 20)),
                  ),
                ),
                AnimatedPositioned(
                  bottom: screenStart ? 0 : -300,
                  left: 115,
                  height: 180,
                  width: 180,
                  duration: const Duration(milliseconds: 750),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(900.0),
                        ),
                        border: Border.all(
                            color: const Color(0xFFffffff), width: 20)),
                  ),
                ),
                AnimatedPositioned(
                  bottom: screenStart ? 20 : -300,
                  right: 265,
                  height: 190,
                  width: 190,
                  duration: const Duration(milliseconds: 900),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xff1f3b3a),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(900.0),
                        ),
                        border: Border.all(
                            color: const Color(0xFFFFFFFF), width: 20)),
                  ),
                ),
                AnimatedPositioned(
                  bottom: screenStart ? 0 : -300,
                  left: 225,
                  height: 240,
                  width: 240,
                  duration: const Duration(milliseconds: 1050),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(900.0),
                        ),
                        border: Border.all(
                            color: const Color(0xFF01B58A), width: 20)),
                  ),
                ),
                AnimatedPositioned(
                  bottom: screenStart ? -240 : -400,
                  left: 175,
                  height: 400,
                  width: 400,
                  duration: const Duration(milliseconds: 300),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xff1f3b3a),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(900.0),
                        ),
                        border: Border.all(
                            color: const Color(0xFFFFFFFF), width: 30)),
                  ),
                ),
                AnimatedPositioned(
                  bottom: screenStart ? -150 : -300,
                  right: 155,
                  height: 300,
                  width: 300,
                  duration: const Duration(milliseconds: 450),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xff1f3b3a),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(800.0),
                        ),
                        border: Border.all(
                            color: const Color(0xFF01B58A), width: 30)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
