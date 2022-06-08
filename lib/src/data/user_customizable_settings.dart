import 'package:mood_meter_picker/mood_meter_picker.dart';

class UserCustomizableSettings {
  UserCustomizableSettings({
    this.unselectedTextStyle,
    this.selectedTextStyle,
    required this.onlyShowSelected,
  });

  final ThemedTextStyle? unselectedTextStyle;

  final ThemedTextStyle? selectedTextStyle;

  final bool onlyShowSelected;
}
