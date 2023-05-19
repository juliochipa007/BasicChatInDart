import 'package:flutter/material.dart';


const Color _customColor = Color.fromARGB(255, 0, 26, 255);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.orange,
  Colors.yellow,
  Colors.green,
  Colors.red,
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 1,
}): assert(selectedColor >= 0 && selectedColor < _colorThemes.length);

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }

}