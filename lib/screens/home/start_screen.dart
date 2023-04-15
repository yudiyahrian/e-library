import 'package:e_library/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:e_library/shared/colors.dart';

void main() {
  runApp(
      const MaterialApp(
        home: StartScreen(),
      )
  );
}

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: 370,
              child: Stack(
                  children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 308,
                            decoration: const BoxDecoration(
                              borderRadius : BorderRadius.only(
                                  bottomRight: Radius.circular(110),
                                  bottomLeft: Radius.circular(110)
                              ),
                              gradient : LinearGradient(
                                  colors: [Color.fromRGBO(51, 95, 92, 1), Color.fromRGBO(11, 22, 23, 1)]
                              ),
                            ),
                        )
                    ),
                    Positioned(
                        top: 200,
                        left: 140,
                        child: Container(
                            width: 170,
                            height: 170,
                            child: Stack(
                                children: <Widget>[
                                  Positioned(
                                      top: 0,
                                      left: 0,
                                      child: Container(
                                          width: 150,
                                          height: 150,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color : Color.fromRGBO(218, 218, 218, 1),
                                          )
                                      )
                                  ),Positioned(
                                      top: 10,
                                      left: 21,
                                      child: Container(
                                          width: 110,
                                          height: 110,
                                          decoration: const BoxDecoration(
                                            image : DecorationImage(
                                                image: AssetImage('assets/New-Icon.png'),
                                                fit: BoxFit.fitWidth
                                            ),
                                          )
                                      )
                                  ),
                                ]
                            )
                        )
                    ),
                  ]
              )
          ),
          const SizedBox(height: 40,),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'E-St',
                    style: TextStyle(
                        fontSize: 50,
                        fontFamily: 'Quick Sand',
                        fontWeight: FontWeight.w700,
                        color: btnColor,
                        decoration: TextDecoration.none
                    ),
                  ),
                  Text(
                      'arby',
                      style: TextStyle(
                          fontSize: 50,
                          fontFamily: 'Quick Sand',
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.none,
                          color: textColor
                      ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                      '(Starbhak Library)',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Quick Sand',
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.none,
                        color: textColor
                    )
                  )
                ],
              ),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                      'A platform built for a new way of reading',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Quick Sand',
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.none,
                          color: textColor
                      )
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 45,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)
                                  )
                              ),
                              backgroundColor: MaterialStateProperty.all(const Color(0XFF01B58A))
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                              return const Home();
                            }));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Get Started for Free',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Quick Sand',
                                    fontSize: 20,
                                    color: Colors.white
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle
                                ),
                                child: Icon(Icons.arrow_forward_ios_outlined, size: 13, color: Color(0XFF01B58A)),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )

        ],
      ),
    );
  }
}

//
// Container(
// width: MediaQuery.of(context).size.width,
// height: 400,
// decoration: const BoxDecoration(
// borderRadius : BorderRadius.only(
// bottomRight: Radius.circular(120),
// bottomLeft: Radius.circular(120)
// ),
// gradient : LinearGradient(
// colors: [Color.fromRGBO(51, 95, 92, 1), Color.fromRGBO(11, 22, 23, 1)]
// ),
// ),
// child: Stack(
// children: [
// Container(
// alignment: Alignment.bottomCenter,
// width: 100,
// height: 100,
// color: Colors.grey,
// )
// ],
// ),
// ),