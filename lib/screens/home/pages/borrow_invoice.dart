import 'package:e_library/screens/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class BorrowInvoice extends StatefulWidget {
  final String currentDate;
  final String bookName;
  final String pickUpDate;
  final String duration;
  const BorrowInvoice({super.key, required this.currentDate, required this.bookName, required this.pickUpDate, required this.duration});

  @override
  State<BorrowInvoice> createState() => _BorrowInvoiceState();
}

class _BorrowInvoiceState extends State<BorrowInvoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xff1F3B3A),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/New-Icon.png",
                    width: 55.0,
                    height: 55.0,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'E-St',
                        style: TextStyle(
                            fontSize: 38,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff01B58A),
                            decoration: TextDecoration.none),
                      ),
                      Text(
                        'arby',
                        style: TextStyle(
                          fontSize: 38,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Borrow Invoice",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: 'Quicksand bold',
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.currentDate,
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand bold',
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  const Text(
                    "#00618575",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand bold',
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Color(0xff01B58A),
                thickness: 2,
                indent: 35,
                endIndent: 35,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  children: [
                    ListTile(
                      title: const Text(
                        "Book :",
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Quicksand bold',
                          fontSize: 14,
                        ),
                      ),
                      subtitle: Text(
                        widget.bookName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'quicksand bold',
                          fontSize: 18,
                        ),
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        "Pick-Up Date :",
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Quicksand bold',
                          fontSize: 14,
                        ),
                      ),
                      subtitle: Text(
                        widget.pickUpDate,
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'quicksand bold',
                          fontSize: 18,
                        ),
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        "Return Time :",
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Quicksand bold',
                          fontSize: 14,
                        ),
                      ),
                      subtitle: Text(
                        "${widget.duration} Days",
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'quicksand bold',
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              SizedBox(
                width: 300,
                height: 42,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, PageTransition(
                        child: const Wrapper(),
                        type: PageTransitionType.fade
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff01B58A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Back to home',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
