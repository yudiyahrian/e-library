import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import 'package:e_library/shared/colors.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
            colors: <Color>[
              Color(0xff1A3130),
              Color(0xff080F0F),
            ],
            stops: <double>[0, 1],
          ),
        ),
        child: Column(
            children: [
              Container(
                height: 40,
                color: bgOnBoard,
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 3),
                      child: Icon(Icons.close, size: 37,color: Colors.white,),
                    ),
                    Text(
                      'Info',
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Quick Sand',
                          fontSize: 22,
                          color: Colors.white
                      ),
                    )
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    height: 123,
                    color: bgOnBoard,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 10,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Informasi Tentang',
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Quick Sand',
                                  fontSize: 22,
                                  color: Colors.white
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'E-St',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Quick Sand',
                                      fontWeight: FontWeight.w700,
                                      color: btnColor,
                                      decoration: TextDecoration.none
                                  ),
                                ),
                                Text(
                                  'arby',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Quick Sand',
                                      fontWeight: FontWeight.w700,
                                      decoration: TextDecoration.none,
                                      color: whiteColor
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                            width: 206,
                            height: 270,
                            child: Stack(
                                children: <Widget>[
                                  Positioned(
                                      top: 0,
                                      left: 10,
                                      child: SvgPicture.asset('assets/Ellipse38.svg')
                                  ),
                                  Positioned(
                                      top: -25,
                                      left: 30,
                                      child: Container(
                                          width: 157,
                                          height: 148,
                                          decoration: const BoxDecoration(
                                            image : DecorationImage(
                                                image: AssetImage('assets/Mobile_Phone_Flatline.png'),
                                                fit: BoxFit.fitWidth
                                            ),
                                          )
                                      )
                                  ),
                                ]
                            )
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  height: 200,
                  color: Colors.white,
                  child: Column(
                    children: [],
                  ),
                ),
              )
            ]
        ),
      ),
    );
  }
}
