import 'package:e_library/screens/home/pages/borrow_invoice.dart';
import 'package:e_library/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:e_library/shared/colors.dart';
import 'package:page_transition/page_transition.dart';

class BorrowForm extends StatefulWidget {
  final String bookName;
  const BorrowForm({super.key, required this.bookName});

  @override
  State<BorrowForm> createState() => _BorrowFormState();
}

class _BorrowFormState extends State<BorrowForm> {

  TextEditingController dateInput = TextEditingController();

  List<String> days = [
    '1',
    '2',
    '3',
    '4',
    '5'
  ];

  String? duration;
  DateTime currentDate = DateTime.now();
  String? pickUpDate;
  late String formattedDate;
  String error = '';

  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    formattedDate = DateFormat('dd/MM/yyyy').format(currentDate);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        color: const Color(0xff1F3B3A),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                "Borrow Form",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: 'Quicksand bold',
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Book',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Quicksand bold',
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextField(
                        readOnly: true,
                        decoration: textInputDecoration.copyWith(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(
                                  Icons.book,
                                  size: 28,
                                  color: Colors.grey,
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 10),
                                  width: 2,
                                  height: 25,
                                  color: Colors.grey,
                                )
                              ],
                            ),
                          ),
                          suffixIcon: const Icon(
                            Icons.lock,
                            size: 24.0,
                            color: Colors.grey,
                          ),
                          hintText: widget.bookName,
                          hintStyle: const TextStyle(
                              fontSize: 17,
                              color: Color(0xFFD3D3D3)
                          ),
                        )
                    ),
                  ]
              ),
              const SizedBox(
                height: 25,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Pick up date',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand bold',
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    style: const TextStyle(
                        fontSize: 17,
                        color: Color(0xFFD3D3D3)
                    ),
                    controller: dateInput,
                    decoration: textInputDecoration.copyWith(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.date_range_outlined,
                              size: 28,
                              color: Colors.grey,
                            ),
                            Container(
                              margin:
                              const EdgeInsets.symmetric(horizontal: 10),
                              width: 2,
                              height: 25,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
                      suffixIcon: const Icon(
                        Icons.date_range_rounded,
                        size: 24.0,
                        color: Colors.grey,
                      ),
                      hintText: 'Select date',
                      hintStyle: const TextStyle(
                          fontSize: 17,
                          color: Color(0xFFD3D3D3)
                      ),
                    ),
                    readOnly: true,
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                          lastDate: DateTime(2101)
                      );
                      if(pickedDate != null ){
                        String formattedDate = DateFormat('dd/MM/yyyy').format(pickedDate);
                        setState(() {
                          dateInput.text = formattedDate; //set output date to TextField value.
                          pickUpDate = formattedDate;
                        });
                      }
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Return time',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand bold',
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    height: 53,
                    child: DropdownButtonFormField(
                      iconEnabledColor: Colors.transparent,
                      style: const TextStyle(
                          fontSize: 17,
                          color: Color(0xFFD3D3D3)
                      ),
                      dropdownColor: bgOnBoard,
                      decoration: textInputDecoration.copyWith(
                          hintText: 'Select days',
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(
                                  Icons.history,
                                  size: 28,
                                  color: Colors.grey,
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 10),
                                  width: 2,
                                  height: 25,
                                  color: Colors.grey,
                                )
                              ],
                            ),
                          ),
                          suffixIcon: const Icon(Icons.arrow_drop_down_rounded,
                            color: greyTransColor,
                            size: 40,
                          ),
                          hintStyle: const TextStyle(
                              fontSize: 17,
                              color: Color(0xFFD3D3D3)
                          ),
                      ),
                      items: days.map((day) {
                        return DropdownMenuItem(
                            value: day,
                            child: Text('$day Days')
                        );
                      }).toList(),
                      onChanged: (String? value) =>
                          setState(() => duration = value!),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                      child: Text(
                          error,
                        style: const TextStyle(
                            fontSize: 17,
                            color: Colors.red
                        ),
                      )
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: SizedBox(
                      width: 370,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {
                          if(duration != null && pickUpDate != null) {
                            Navigator.push(context, PageTransition(
                                child: BorrowInvoice(
                                  bookName: widget.bookName,
                                  duration: duration!,
                                  pickUpDate: pickUpDate!,
                                  currentDate: formattedDate,
                                ),
                                type: PageTransitionType.fade
                            ));
                          }else {
                            setState(() {
                              error = 'Please provide data to continue';
                            });
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff01B58A),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'Borrow Now',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Quicksand bold',
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Center(
                    child: SizedBox(
                      width: 370,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: greyColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'Cancel',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Quicksand bold',
                            color: Colors.black
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
