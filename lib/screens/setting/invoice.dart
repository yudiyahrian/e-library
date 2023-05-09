import 'package:e_library/shared/books.dart';
import 'package:flutter/material.dart';
import 'package:e_library/shared/colors.dart';
import 'package:e_library/models/book.dart';

class InvoiceSetting extends StatefulWidget {
  const InvoiceSetting({Key? key}) : super(key: key);

  @override
  State<InvoiceSetting> createState() => _InvoiceSettingState();
}

class _InvoiceSettingState extends State<InvoiceSetting> {
  List<InvoiceBook> invoiceBook = [
    InvoiceBook(image: 'percy_jackson.png', title: 'Percy Jackson', duration: '3 days', date: '10/10/2023', id: '#23124245'),
    InvoiceBook(image: 'blue_lock.png', title: 'Blue Lock', duration: '3 days', date: '10/10/2023', id: '#23124245'),
    InvoiceBook(image: 'seribu_wajah_ayah.png', title: 'Seribu Wajah Ayah', duration: '3 days', date: '10/10/2023', id: '#23124245'),
  ];

  List<InvoiceBook> invoiceBookMonth = [
    InvoiceBook(image: 'the_art_of_loving.png', title: 'The Art Of Loving', duration: '3 days', date: '10/10/2023', id: '#23124245'),
    InvoiceBook(image: 'filosopi_teras.png', title: 'Filosofi Teras', duration: '3 days', date: '10/10/2023', id: '#23124245'),
    InvoiceBook(image: 'seribu_wajah_ayah.png', title: 'Seribu Wajah Ayah', duration: '3 days', date: '10/10/2023', id: '#23124245'),
  ];
  
  
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
                height: 62,
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
                      'Invoice',
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
              SizedBox(
                height: MediaQuery.of(context).size.height - 130,
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Text(
                            'This Week',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Quick Sand',
                                fontSize: 16,
                                color: greyColor
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: invoiceBook.map((book) => InvoiceBookList(book: book)).toList()
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Text(
                            'March 2023',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Quick Sand',
                                fontSize: 16,
                                color: greyColor
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children:  invoiceBookMonth.map((book) => InvoiceBookList(book: book)).toList(),
                    )
                  ],
                ),
              ),
            ]
        ),
      ),
    );
  }
}
