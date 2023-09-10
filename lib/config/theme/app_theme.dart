import '../../core/constants/export.dart';

class AppTheme {
  static ThemeData themeData = ThemeData(
    fontFamily: GoogleFonts.manrope().fontFamily,
    brightness: Brightness.light,
    primaryColorDark: ColorsResource.primaryColorDark,
    scaffoldBackgroundColor: ColorsResource.whiteColor,
    primaryColor: ColorsResource.primaryColor,
    colorScheme:
        ThemeData().colorScheme.copyWith(primary: ColorsResource.primaryColor),
    appBarTheme: const AppBarTheme(
        backgroundColor: ColorsResource.whiteColor,
        titleTextStyle: TextStyle(
            fontSize: DimensionsResource.d_20,
            fontWeight: FontWeight.normal,
            color: ColorsResource.blackColor)),
    textTheme: textTheme,
  );
}
