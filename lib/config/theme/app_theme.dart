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
    appBarTheme: AppBarTheme(
        backgroundColor: ColorsResource.primaryColor,
        titleTextStyle:
            textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700)),
    textTheme: textTheme,
  );
}
