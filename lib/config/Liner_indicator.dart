
// ignore_for_file: file_names
import 'package:flutter/material.dart';

Widget indicator({required double value}){
  return  LinearProgressIndicator(
    value: value,
    color: const Color(0xffFE9900),
    backgroundColor: const Color(0xff334155),
  );
}
