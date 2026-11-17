import 'package:flutter/material.dart';

InputDecoration getInputDecoration(String label, {Widget? suffixIcon}) {
  return InputDecoration(
    hintText: label,
    fillColor: Colors.blueGrey.shade100,
    filled: true,
    contentPadding: EdgeInsets.fromLTRB(16, 8, 16, 8),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(60)),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(60),
      borderSide: BorderSide(color: Colors.black, width: 2),
    ),
    suffixIcon: suffixIcon,
  );
}
