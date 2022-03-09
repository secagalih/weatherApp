part of 'theme.dart';

class Styles {
  Styles._();

  static TextStyle appBarTitleStyle = GoogleFonts.openSans(
    color: Colors.white,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );

  static TextStyle extraBig = GoogleFonts.openSans(
    color: Colors.white,
    fontSize: 116,
    fontWeight: FontWeight.w700,
  );

  static TextStyle secondBig = GoogleFonts.openSans(
    color: Colors.white,
    fontSize: 22,
    fontWeight: FontWeight.w400,
  );

  static TextStyle inputHintStyle = GoogleFonts.openSans(
    color: AppColors.inputHintColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle inputErrorStyle = GoogleFonts.openSans(
    color: Colors.red,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle linkStyle = GoogleFonts.openSans(
    color: AppColors.mainColorOrange,
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );

  static TextStyle exNormal = GoogleFonts.openSans(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  static TextStyle normalStyle = GoogleFonts.openSans(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle smallStyle = GoogleFonts.openSans(
    color: Colors.white,
    fontSize: 10,
    fontWeight: FontWeight.w400,
  );

  static TextStyle mediumStyle = GoogleFonts.openSans(
    color: Colors.white,
    fontSize: 13,
    fontWeight: FontWeight.w400,
  );

  static TextStyle smallstyle = GoogleFonts.openSans(
    color: Colors.white,
    fontSize: 11,
    fontWeight: FontWeight.normal,
  );

  static ButtonStyle orangeButton = ElevatedButton.styleFrom(
    onSurface: Colors.white,
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    primary: AppColors.mainColorOrange,
    alignment: Alignment.center,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(Dimens.defaultBorderRadius),
    ),
    elevation: 0,
  );
  static ButtonStyle orangeOutlinedButton = OutlinedButton.styleFrom(
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.defaultBorderRadius),
      ),
      side: BorderSide(
        color: AppColors.orangeButton,
      ));

  static ButtonStyle buttonOutlined = OutlinedButton.styleFrom(
    padding: EdgeInsets.symmetric(horizontal: Dimens.defaultMargin),
    fixedSize: Size(150, 40),
    alignment: Alignment.center,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(Dimens.defaultBorderRadius),
    ),
    side: BorderSide(
      color: Color(0xffd0d0d0),
    ),
  );
}
