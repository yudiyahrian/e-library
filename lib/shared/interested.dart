import 'package:e_library/models/interest.dart';
import 'package:flutter/material.dart';
import 'package:e_library/shared/colors.dart';

class Interested extends StatefulWidget {
  final InterestModel interest;
  const Interested({Key? key, required this.interest}) : super(key: key);

  @override
  State<Interested> createState() => _InterestedState();
}

class _InterestedState extends State<Interested> {
  bool selected = false;

  void select(){
    setState(() {
      selected = !selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: select,
        child: AnimatedContainer(
          decoration: BoxDecoration(
              color: selected ? btnColor : const Color(0xff44777B),
              borderRadius: BorderRadius.circular(10)
          ),
          duration: const Duration(milliseconds: 200),
          child: Center(
            child: Text(
                widget.interest.name,
              style: const TextStyle(
                  fontSize: 15,
                  fontFamily: 'Quick Sand',
                  fontWeight: FontWeight.w700,
                  color: whiteColor,
                  decoration: TextDecoration.none
              ),
            ),
          ),
        ),
      ),
    );
  }
}
