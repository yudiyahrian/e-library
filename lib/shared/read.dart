import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ReadPage extends StatefulWidget {
  const ReadPage({super.key});

  @override
  State<ReadPage> createState() => _ReadPageState();
}

class _ReadPageState extends State<ReadPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          endDrawer: Drawer(
            backgroundColor: Color(0xFF1F3B3A),
            width: 200,
            child: ListView(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          "Menu",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Quick Sand",
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        width: 120,
                        child: Image.asset(
                          "assets/images/book/filosofi.jpg",
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                "Filosofi beras",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21,
                                    fontFamily: "Quick Sand"),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Henry Managelas",
                                style: TextStyle(
                                  fontFamily: "Quick Sand",
                                  fontSize: 19,
                                  color: Color(0xFFBCBCBC),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(top:20, left: 7),
                        child: Text(
                          "86 Bab",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: "Quick Sand"),
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        child: Column(
                          children: [
                            Container(

                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                ))),
                                width: double.maxFinite,
                                child: Container(
                                  margin: EdgeInsets.only(left: 10, bottom: 15, top: 15),
                                  child: Text(
                                    "Bab 1",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: "Quick Sand"),
                                  ),
                                )),
                                Container(

                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                ))),
                                width: double.maxFinite,
                                child: Container(
                                  margin: EdgeInsets.only(left: 10, bottom: 15, top: 15),
                                  child: Text(
                                    "Bab 2",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: "Quick Sand"),
                                  ),
                                )),
                                Container(

                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                ))),
                                width: double.maxFinite,
                                child: Container(
                                  margin: EdgeInsets.only(left: 10, bottom: 15, top: 15),
                                  child: Text(
                                    "Bab 3",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: "Quick Sand"),
                                  ),
                                )),
                                Container(

                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                ))),
                                width: double.maxFinite,
                                child: Container(
                                  margin: EdgeInsets.only(left: 10, bottom: 15, top: 15),
                                  child: Text(
                                    "Bab 4",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: "Quick Sand"),
                                  ),
                                )),
                                Container(

                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                ))),
                                width: double.maxFinite,
                                child: Container(
                                  margin: EdgeInsets.only(left: 10, bottom: 15, top: 15),
                                  child: Text(
                                    "Bab 5",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: "Quick Sand"),
                                  ),
                                )),
                                Container(

                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                ))),
                                width: double.maxFinite,
                                child: Container(
                                  margin: EdgeInsets.only(left: 10, bottom: 15, top: 15),
                                  child: Text(
                                    "Bab 6",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: "Quick Sand"),
                                  ),
                                )),
                                Container(

                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                ))),
                                width: double.maxFinite,
                                child: Container(
                                  margin: EdgeInsets.only(left: 10, bottom: 15, top: 15),
                                  child: Text(
                                    "Bab 7",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: "Quick Sand"),
                                  ),
                                )),
                                Container(

                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                ))),
                                width: double.maxFinite,
                                child: Container(
                                  margin: EdgeInsets.only(left: 10, bottom: 15, top: 15),
                                  child: Text(
                                    "Bab 8",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: "Quick Sand"),
                                  ),
                                )),
                                Container(

                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                ))),
                                width: double.maxFinite,
                                child: Container(
                                  margin: EdgeInsets.only(left: 10, bottom: 15, top: 15),
                                  child: Text(
                                    "Bab 9",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: "Quick Sand"),
                                  ),
                                )),
                                Container(

                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                ))),
                                width: double.maxFinite,
                                child: Container(
                                  margin: EdgeInsets.only(left: 10, bottom: 15, top: 15),
                                  child: Text(
                                    "Bab 10",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: "Quick Sand"),
                                  ),
                                )),
                                Container(

                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                ))),
                                width: double.maxFinite,
                                child: Container(
                                  margin: EdgeInsets.only(left: 10, bottom: 15, top: 15),
                                  child: Text(
                                    "Bab 11",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: "Quick Sand"),
                                  ),
                                )),
                                Container(

                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                ))),
                                width: double.maxFinite,
                                child: Container(
                                  margin: EdgeInsets.only(left: 10, bottom: 15, top: 15),
                                  child: Text(
                                    "Bab 12",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: "Quick Sand"),
                                  ),
                                )),
                                
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                
              ],
            ),
          ),
          appBar: AppBar(
            backgroundColor: Color(0xFF335F5C),
            elevation: 0,
            leading: Container(
                margin: EdgeInsets.only(left: 14),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 35,
                    ))),
            title: Text(
              "Filosofi Teras",
              style: TextStyle(
                  fontFamily: "Quick Sand",
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white),
            ),
          ),
          body: Container(
            width: double.maxFinite,
            decoration: BoxDecoration(color: Color(0xFF335F5C)),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25, right: 15, top: 5),
                  child: Column(
                    children: [
                      Container(
                        width: double.maxFinite,
                        child: Text(
                          "Bab 1",
                          style: TextStyle(
                            fontFamily: "Quick Sand",
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                          "   Seorang pria termenung sambil duduk di atas kursi rodanya. Wajah pucat pasih tidak mengurangi ketampanan yang pria itu miliki, senyum manisnya tidak luntur meski rasa sakit terus menggerogoti tubuhnya.",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Quick Sand"),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25),
                        child: Text(
                          "   Dia sedang berada disebuah taman, menatap ke arah langit dimana baru saja melintas sebuah pesawat komersil yang mengingatkan dirinya akan cita-citanya yang kandas akibat penyakit yang membuat dirinya semakin lemah.",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Quick Sand"),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25),
                        child: Text(
                          "   Bagaimana dia bisa melakukan pekerjaanya itu saat tubuh lemah saja tidak mampu untuk sekedar berdiri, meski dia begitu ingin menikmati hidupnya.",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Quick Sand"),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
