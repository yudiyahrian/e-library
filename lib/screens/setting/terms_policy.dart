import 'package:e_library/shared/bullet_list.dart';
import 'package:flutter/material.dart';
import 'package:e_library/shared/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TermsAndPolicy extends StatelessWidget {
  const TermsAndPolicy({Key? key}) : super(key: key);

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
                      'Terms, Condition & Privacy',
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
                        SizedBox(
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Terms & Condition and privacy policy',
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Quick Sand',
                                    fontSize: 22,
                                    color: Colors.white
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                        ),
                        Container(
                            width: 200,
                            height: 270,
                            child: Stack(
                                children: <Widget>[
                                  Positioned(
                                      top: 0,
                                      left: 0,
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
                                  'Account Creation',
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
                              margin: const EdgeInsets.only(top: 5, bottom: 10),
                              width: 280,
                              decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                      color: Colors.white,
                                      width: 2
                                    )
                                )
                              )
                          ),
                          SizedBox(
                            width: 380,
                            child: BulletList(
                                const [
                                'Users must create an account to use the library application, and they are responsible for maintaining the confidentiality of their login credentials.',
                                'All users account will also be carefully maintained by school authority',
                                'Regarding all account registration and renting data will be securely stored to the server'
                              ]
                            )
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
                                  'Use of Materials',
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
                              margin: const EdgeInsets.only(top: 5, bottom: 10),
                              width: 280,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.white,
                                          width: 2
                                      )
                                  )
                              )
                          ),
                          SizedBox(
                              width: 380,
                              child: BulletList(
                                  const [
                                    'User can read the book through the application or user can also borrow rented book in the school library.',
                                    'Any damage or stain exposed in the book will be payed by student who borrowed the book',
                                    'Lost book will be replaced by a same exact book or atleast a book with the same category'
                                  ]
                              )
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
                                  'Copyright Claim',
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
                              margin: const EdgeInsets.only(top: 5, bottom: 10),
                              width: 280,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.white,
                                          width: 2
                                      )
                                  )
                              )
                          ),
                          SizedBox(
                              width: 380,
                              child: BulletList(
                                  const [
                                   'User are heavily prohibited to use any material inside E-Starby without any permit.'
                                  ]
                              )
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
                                  'Access restriction',
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
                              margin: const EdgeInsets.only(top: 5, bottom: 10),
                              width: 280,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.white,
                                          width: 2
                                      )
                                  )
                              )
                          ),
                          SizedBox(
                              width: 380,
                              child: BulletList(
                                  const [
                                    'User can only access features once logged in ',
                                    'Only students and teachers of SMK Taruna Bhakti can access and use this application',
                                    'User should be registered as SMK Taruna Bhakti student in order to access this application, means anyone who have graduates can’t use this application anymore'
                                  ]
                              )
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
