import 'package:flutter/material.dart';
import 'package:e_library/shared/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_decoration/dotted_decoration.dart';

class HowToUse extends StatelessWidget {
  const HowToUse({Key? key}) : super(key: key);

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
                  children: [
                    GestureDetector(
                      child: const Padding(
                        padding: EdgeInsets.only(left: 15, right: 3),
                        child: Icon(Icons.close, size: 37,color: Colors.white,),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    const Text(
                      'How To Use',
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
                      children: [
                        const SizedBox(width: 10,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'How To Use',
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
                            margin: const EdgeInsets.only(left: 21),
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
                                      top: 0,
                                      left: 40,
                                      child: Container(
                                          width: 140,
                                          height: 140,
                                          decoration: const BoxDecoration(
                                            image : DecorationImage(
                                                image: AssetImage('assets/images/setting/phone_maintenance_flatline.png'),
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
              SizedBox(
                height: MediaQuery.of(context).size.height - 200,
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                '1. ',
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Quick Sand',
                                    fontSize: 20,
                                    color: Colors.white
                                ),
                              ),
                              SizedBox(
                                width: 260,
                                child: Text(
                                  'Make sure you have your own account',
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Quick Sand',
                                      fontSize: 20,
                                      color: Colors.white
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, bottom: 10),
                            width: 320,
                            decoration: DottedDecoration(
                              color: whiteColor,
                              strokeWidth: 2
                            )
                          ),
                          const SizedBox(
                            width: 380,
                            child: Text(
                              'Porem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis. Ut commodo efficitur neque.',
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Quick Sand',
                                  fontSize: 16,
                                  color: greyColor
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                '2. ',
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Quick Sand',
                                    fontSize: 20,
                                    color: Colors.white
                                ),
                              ),
                              SizedBox(
                                width: 260,
                                child: Text(
                                  'Choose book whatever you want',
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Quick Sand',
                                      fontSize: 20,
                                      color: Colors.white
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 5, bottom: 10),
                              width: 320,
                              decoration: DottedDecoration(
                                  color: whiteColor,
                                  strokeWidth: 2
                              )
                          ),
                          const SizedBox(
                            width: 380,
                            child: Text(
                              'Porem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis. Ut commodo efficitur neque.',
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Quick Sand',
                                  fontSize: 16,
                                  color: greyColor
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                '3. ',
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Quick Sand',
                                    fontSize: 20,
                                    color: Colors.white
                                ),
                              ),
                              SizedBox(
                                width: 260,
                                child: Text(
                                  'Choose to read digital books or borrow books',
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Quick Sand',
                                      fontSize: 20,
                                      color: Colors.white
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 5, bottom: 10),
                              width: 320,
                              decoration: DottedDecoration(
                                  color: whiteColor,
                                  strokeWidth: 2
                              )
                          ),
                          const SizedBox(
                            width: 380,
                            child: Text(
                              'Porem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis. Ut commodo efficitur neque.',
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Quick Sand',
                                  fontSize: 16,
                                  color: greyColor
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                '4. ',
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Quick Sand',
                                    fontSize: 20,
                                    color: Colors.white
                                ),
                              ),
                              SizedBox(
                                width: 260,
                                child: Text(
                                  'Read digital book',
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Quick Sand',
                                      fontSize: 20,
                                      color: Colors.white
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 5, bottom: 10),
                              width: 320,
                              decoration: DottedDecoration(
                                  color: whiteColor,
                                  strokeWidth: 2
                              )
                          ),
                          const SizedBox(
                            width: 380,
                            child: Text(
                              'Porem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis. Ut commodo efficitur neque.',
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Quick Sand',
                                  fontSize: 16,
                                  color: greyColor
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                '5. ',
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Quick Sand',
                                    fontSize: 20,
                                    color: Colors.white
                                ),
                              ),
                              SizedBox(
                                width: 260,
                                child: Text(
                                  'Borrowing book',
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Quick Sand',
                                      fontSize: 20,
                                      color: Colors.white
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 5, bottom: 10),
                              width: 320,
                              decoration: DottedDecoration(
                                  color: whiteColor,
                                  strokeWidth: 2
                              )
                          ),
                          const SizedBox(
                            width: 380,
                            child: Text(
                              'Porem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis. Ut commodo efficitur neque.',
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Quick Sand',
                                  fontSize: 16,
                                  color: greyColor
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]
        ),
      ),
    );
  }
}
