import 'package:flutter/material.dart';

class AppTheme {
  final int initialValue;
  final List<Color> _colors = [
    Colors.red,
    Colors.blue,
    Colors.purple,
    Colors.green
  ];

  AppTheme({required this.initialValue});

  ThemeData theme() =>
      ThemeData(useMaterial3: true, colorSchemeSeed: _colors[initialValue]);
}
