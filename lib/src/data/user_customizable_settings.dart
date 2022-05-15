import 'package:flutter/material.dart';

class UserCustomizableSettings {
  UserCustomizableSettings({
    this.unselectedTextStyle,
    this.selectedTextStyle,
    required this.onlyShowSelected,
  });

  final TextStyle? unselectedTextStyle;

  final TextStyle? selectedTextStyle;

  final bool onlyShowSelected;
}
