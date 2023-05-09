import 'package:flutter/material.dart';
import 'package:e_library/shared/colors.dart';
import 'package:e_library/models/setting.dart';
import 'package:e_library/shared/settings.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  
  List<Helpy> helpList = [
    Helpy(title: 'There was an error while reading the book'),
    Helpy(title: 'There was an error when borrowing the book'),
    Helpy(title: 'Broken book'),
    Helpy(title: 'Lost book'),
    Helpy(title: 'Can’t make an order borrowing book'),
    Helpy(title: 'Can’t edit profile '),
    Helpy(title: 'Don’t get invoice borrow book'),
    Helpy(title: 'Borrowing Book'),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                  height: 95,
                  color: bgOnBoard,
                  child: Column(
                    children: [
                      Row(
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
                            'Help',
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
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsets.symmetric(horizontal: 30),
                              height: 35,
                              child: TextField(
                                decoration: InputDecoration(
                                    isDense: true,
                                    contentPadding: const EdgeInsets.all(1),
                                    filled: true,
                                    fillColor: Color(0xFF44777B),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: BorderSide.none,
                                    ),
                                    hintText: "Cari disini",
                                    hintStyle: const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Color(0x54FFFFFF),
                                        fontSize: 16
                                    ),
                                    prefixIcon: const Icon(Icons.search, size: 28,),
                                    prefixIconColor: Color(0x54FFFFFF)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                SizedBox(
                  height: MediaQuery.of(context).size.height - 150,
                  child: ListView(
                    children: helpList.map((help) => HelpList(help: help)).toList()
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}