import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class borrow_form extends StatefulWidget {
  const borrow_form({super.key});

  @override
  State<borrow_form> createState() => _borrow_formState();
}

class _borrow_formState extends State<borrow_form> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Color(0xff1f3b3a),
          child:Column(
            children: [

            ],
          ),
      )),
    );
  }
}