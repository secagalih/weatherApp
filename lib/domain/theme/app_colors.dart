part of 'theme.dart';

class AppColors {
  AppColors._();
  static const mainColor = Color(0xFF000918);
  static const gradient1 = Color(0xFF82DAF4);
  static const gradient2 = Color(0xFF126CF4);
  static const mainColorOrange = Color(0xFFF36E36);
  static const orangeButton = Color(0xFFF36E36);
  static const buttonDisabled = Color(0xFFE7E7E7);
  static const shadowColor = Color(0xFF000000);
  static const inputEnabledBorder = Color(0xFFD0D0D0);
  static const inputFocusedBorder = Color(0xFFF36E36);
  static const inputHintColor = Color(0xFFD0D0D0);
  static const dividerColor = Color(0xFFD0D0D0);
  static const landingBackground = Color(0xFFF7F1EF);

  static Map<int, Color> mainColorSwatch = {
    50: mainColor.withOpacity(.1),
    100: mainColor.withOpacity(.2),
    200: mainColor.withOpacity(.3),
    300: mainColor.withOpacity(.4),
    400: mainColor.withOpacity(.5),
    500: mainColor.withOpacity(.6),
    600: mainColor.withOpacity(.7),
    700: mainColor.withOpacity(.8),
    800: mainColor.withOpacity(.9),
    900: mainColor.withOpacity(1),
  };
  static MaterialColor mainMaterialColor =
      MaterialColor(mainColor.value, mainColorSwatch);
}
