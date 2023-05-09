import 'package:e_library/shared/colors.dart';
import 'package:flutter/material.dart';

InputDecoration textInputDecoration = InputDecoration(
  isDense: true,
  fillColor: Colors.transparent,
  filled: true,
  enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0XFFD3D3D3), width: 1),
      borderRadius: BorderRadius.circular(50),
  ),
  focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0XFF01B58A), width: 1),
      borderRadius: BorderRadius.circular(50),
  ),
);

InputDecoration textInputDecorationEdit = const InputDecoration(
  hintStyle: TextStyle(color: Colors.white),
  fillColor: Colors.transparent,
  isDense: true,
  filled: true,
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: greyColor, width: 1.5),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: btnColor, width: 1.5),
  ),
  contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 5)
);