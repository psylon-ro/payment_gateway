//List<String>
import 'package:flutter/material.dart';

yearmaker() {
  List<String> years = <String>[];
  for (int i = 2020; i <= 2050; i++) {
    years.add(i.toString());
  }
  return years;
}

const kTextStyle = TextStyle(color: Colors.white);

const List<String> month = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December'
];
