import 'package:e_library/screens/home/pages/favorite.dart';
import 'package:e_library/screens/home/pages/home.dart';
import 'package:e_library/screens/home/pages/product.dart';
import 'package:e_library/screens/home/pages/setting.dart';
import 'package:e_library/shared/colors.dart';
import 'package:e_library/shared/custom_icons.dart';
import 'package:flutter/material.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class HomeCore extends StatefulWidget {
  const HomeCore({Key? key}) : super(key: key);

  @override
  State<HomeCore> createState() => _HomeCoreState();
}

class _HomeCoreState extends State<HomeCore> {

  final Color navigationBarColor = Color(0xFF0B1515);
  int selectedIndex = 0;
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Product(),
    Favorite(),
    Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      // backgroundColor: Colors.grey,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: _widgetOptions
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: WaterDropNavBar(
          backgroundColor: navigationBarColor,
          waterDropColor: Color(0xff01b58a),
          iconSize: 28,
          bottomPadding: 20,
          inactiveIconColor: Colors.white,
          onItemSelected: (int index) {
            setState(() {
              selectedIndex = index;
            });
            pageController.animateToPage(selectedIndex,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeOutQuad);
          },
          selectedIndex: selectedIndex,
          barItems: <BarItem>[
            BarItem(
              filledIcon: CustomIcons.home_1,
              outlinedIcon: CustomIcons.home,
            ),
            BarItem(
                filledIcon: CustomIcons.category_1,
                outlinedIcon: CustomIcons.category
            ),
            BarItem(
              filledIcon: CustomIcons.heart_1,
              outlinedIcon: CustomIcons.heart,
            ),
            BarItem(
              filledIcon: CustomIcons.setting_1,
              outlinedIcon: CustomIcons.setting,
            ),
          ],
        ),
      ),
    );
  }
}

