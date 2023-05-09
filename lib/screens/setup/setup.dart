import 'package:e_library/screens/setup/pages/onboard_first.dart';
import 'package:e_library/screens/setup/pages/onboard_fourth.dart';
import 'package:e_library/screens/setup/pages/onboard_second.dart';
import 'package:e_library/screens/setup/pages/onboard_third.dart';
import 'package:e_library/screens/wrapper.dart';
import 'package:e_library/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Setup extends StatefulWidget {
  const Setup({Key? key}) : super(key: key);

  @override
  State<Setup> createState() => _SetupState();
}

class _SetupState extends State<Setup> {

  final _pageController = PageController();

  List<Widget> pages = <Widget>[
    const OnboardFirst(),
    const OnboardSecond(),
    const OnboardThird(),
    OnboardFourth(),
  ];

  void nextPage(){
    _pageController.animateToPage(_pageController.page!.toInt() + 1,
        duration: Duration(milliseconds: 400),
        curve: Curves.easeIn
    );
  }

  void previousPage(){
    _pageController.animateToPage(_pageController.page!.toInt() - 1,
        duration: Duration(milliseconds: 400),
        curve: Curves.easeIn
    );
  }

  void changePage() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return const Wrapper();
    }));
  }

  double currentPage = 0;

  @override
  void initState() {
    _pageController.addListener((){
      setState(() {
        currentPage = _pageController.page!;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgOnBoard,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset(
                    'assets/New-Icon.png', height: 40, width: 40,),
                ),
                const Text(
                  'E-St',
                  style: TextStyle(
                      fontSize: 26,
                      fontFamily: 'Quick Sand',
                      fontWeight: FontWeight.w700,
                      color: btnColor,
                      decoration: TextDecoration.none
                  ),
                ),
                const Text(
                  'arby',
                  style: TextStyle(
                      fontSize: 26,
                      fontFamily: 'Quick Sand',
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none,
                      color: greyColor
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 295,
            child: PageView(
              controller: _pageController,
              children: pages,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SmoothPageIndicator(
                    controller: _pageController,
                    count: pages.length,
                    effect: const ExpandingDotsEffect(
                      activeDotColor: btnColor,
                      dotColor: greyColor,
                      expansionFactor: 2,
                      radius: 6,
                      spacing: 8,
                      dotHeight: 10,
                      dotWidth: 10,
                    )
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: currentPage != 0
            ? Padding(
              padding: const EdgeInsets.only(right: 30, left: 30, bottom: 20),
              child: Row(
                children: [
                  SizedBox(
                    width: 90,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)
                              )
                          ),
                          backgroundColor: MaterialStateProperty
                              .all(greyColor)
                      ),
                      onPressed: previousPage,
                      child: const Text(
                        'Back',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Quick Sand',
                            fontSize: 18,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 90,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius
                                      .circular(50)
                              )
                          ),
                          backgroundColor: MaterialStateProperty
                              .all(const Color(0XFF01B58A))
                      ),
                      onPressed: currentPage != 3 ? nextPage
                          : changePage,
                      child: const Text(
                        'Next',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Quick Sand',
                            fontSize: 18,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
            : Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 90,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius
                                      .circular(50)
                              )
                          ),
                          backgroundColor: MaterialStateProperty
                              .all(const Color(0XFF01B58A))
                      ),
                      onPressed: nextPage,
                      child: const Text(
                        'Next',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Quick Sand',
                            fontSize: 18,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
