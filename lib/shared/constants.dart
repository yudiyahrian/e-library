import 'package:flutter/material.dart';

InputDecoration textInputDecoration = InputDecoration(
  fillColor: Colors.white,
  filled: true,
  enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0XFFD3D3D3), width: 2.0),
      borderRadius: BorderRadius.circular(50),
  ),
  focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0XFF01B58A), width: 2.0),
      borderRadius: BorderRadius.circular(50),
  ),
  contentPadding: const EdgeInsets.all(20)
);