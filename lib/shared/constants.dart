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