import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart';

class AppTheme {
  AppTheme._();

  static const Color _lightPrimaryColor = MyColors.darkBlue;
  static const Color _lightPrimaryVariantColor = MyColors.lightBlue;
  static const Color _lightOnPrimaryColor = MyColors.white;
  static const Color _lightSecondaryColor = MyColors.yellow;
  static const Color _lightGreyColor = MyColors.lightGrey;
  static const Color _lightBrightColor = MyColors.darkGrey;
  static const Color _lightTextColor = MyColors.black;
  static const Color _lightTextVariantColor = MyColors.lightBlack;

  static const TextStyle _lightScreenHeadingTextStyle =
      TextStyle(fontSize: 20.0, color: _lightPrimaryVariantColor);
  static const TextStyle _lightSubHeadingTextStyle =
      TextStyle(fontSize: 18.0, color: _lightBrightColor);
  static const TextStyle _lightAppBarHeadingTextStyle = TextStyle(
      fontSize: 20.0, color: _lightOnPrimaryColor, fontWeight: FontWeight.w700);
  static const TextStyle _lightScreenTaskNameTextStyle = TextStyle(
      fontSize: 20.0,
      color: _lightTextVariantColor,
      fontWeight: FontWeight.w300);
  static const TextStyle _lightScreenTaskDurationTextStyle =
      TextStyle(fontSize: 16.0, color: _lightTextColor);

  static final ThemeData lightTheme = ThemeData(
    fontFamily: "Montserrat",
    scaffoldBackgroundColor: _lightOnPrimaryColor,
    inputDecorationTheme:
        const InputDecorationTheme(fillColor: _lightPrimaryColor),
    appBarTheme: const AppBarTheme(
      color: _lightOnPrimaryColor,
      iconTheme: IconThemeData(
        color: _lightOnPrimaryColor,
      ),
    ),
    cupertinoOverrideTheme: const CupertinoThemeData(
        barBackgroundColor: _lightOnPrimaryColor,
        brightness: Brightness.light,
        textTheme: CupertinoTextThemeData(primaryColor: _lightPrimaryColor),
        primaryColor: _lightPrimaryColor),
    colorScheme: const ColorScheme.light(
        primary: _lightPrimaryColor,
        primaryVariant: _lightPrimaryVariantColor,
        secondary: _lightSecondaryColor,
        onPrimary: _lightOnPrimaryColor,
        onSecondary: _lightTextVariantColor,
        onSecondaryContainer: _lightBrightColor,
        background: _lightPrimaryColor,
        surface: _lightGreyColor,
        onSurface: _lightGreyColor,
        brightness: Brightness.dark),
    iconTheme: const IconThemeData(color: _lightPrimaryColor, size: 24),
    textTheme: _lightTextTheme,
    disabledColor: _lightBrightColor,
    dialogBackgroundColor: _lightPrimaryVariantColor,
    accentColor: _lightPrimaryColor,
    cardTheme: const CardTheme(elevation: 2, color: _lightOnPrimaryColor),
    backgroundColor: _lightOnPrimaryColor,
    splashFactory: InkRipple.splashFactory,
    dividerColor: Colors.grey.withOpacity(0.3),
  );

  static const TextTheme _lightTextTheme = TextTheme(
    headline5: _lightScreenHeadingTextStyle,
    bodyText2: _lightScreenTaskNameTextStyle,
    bodyText1: _lightScreenTaskDurationTextStyle,
    headline1: _lightAppBarHeadingTextStyle,
    subtitle1: _lightScreenHeadingTextStyle,
    headline2: _lightSubHeadingTextStyle,
    caption: _lightScreenTaskDurationTextStyle,
  );

  // Dark Theme
  static final Color? _darkPrimaryColor = Colors.blue[200];
  static final Color? _darkPrimaryVariantColor = Colors.blue[200];
  static const Color _darkOnPrimaryColor = MyColors.darkThemeBlack;
  static const Color _darkSecondaryColor = MyColors.yellow;
  static const Color _darkGreyColor = MyColors.lightBlack;
  static const Color _darkBrightColor = MyColors.lightBlack;
  static const Color _darkTextColor = MyColors.white;
  static const Color _darkTextVariantColor = MyColors.lightGrey;

  static final TextStyle _darkScreenHeadingTextStyle =
      TextStyle(fontSize: 32.0, color: _darkPrimaryVariantColor);
  static const TextStyle _darkSubHeadingTextStyle =
      TextStyle(fontSize: 18.0, color: _darkTextVariantColor);
  static const TextStyle _darkAppBarHeadingTextStyle = TextStyle(
      fontSize: 20.0, color: _darkTextColor, fontWeight: FontWeight.w700);
  static const TextStyle _darkScreenTaskNameTextStyle = TextStyle(
      fontSize: 20.0,
      color: _darkTextVariantColor,
      fontWeight: FontWeight.w500);
  static const TextStyle _darkScreenTaskDurationTextStyle =
      TextStyle(fontSize: 16.0, color: _darkTextColor);

  static final ThemeData darkTheme = ThemeData(
    fontFamily: "Montserrat",
    scaffoldBackgroundColor: _darkOnPrimaryColor,
    inputDecorationTheme: InputDecorationTheme(fillColor: _darkPrimaryColor),
    appBarTheme: AppBarTheme(
      color: _darkOnPrimaryColor,
      brightness: Brightness.dark,
      iconTheme: IconThemeData(
        color: _darkPrimaryColor,
      ),
    ),
    cupertinoOverrideTheme: CupertinoThemeData(
        barBackgroundColor: _darkOnPrimaryColor,
        brightness: Brightness.dark,
        textTheme: CupertinoTextThemeData(primaryColor: _darkPrimaryColor!),
        primaryColor: _darkPrimaryColor),
    colorScheme: ColorScheme.light(
        primary: _darkPrimaryColor!,
        primaryVariant: _darkPrimaryVariantColor,
        secondary: _darkSecondaryColor,
        onPrimary: _darkOnPrimaryColor,
        onSecondary: _darkTextColor,
        background: _darkPrimaryColor!,
        surface: _darkGreyColor,
        onSurface: _darkGreyColor,
        brightness: Brightness.light),
    iconTheme: IconThemeData(color: _darkPrimaryColor, size: 24),
    textTheme: _darkTextTheme,
    disabledColor: _darkBrightColor,
    dialogBackgroundColor: _darkPrimaryVariantColor,
    accentColor: _darkPrimaryColor,
    cardTheme: const CardTheme(elevation: 2, color: _darkOnPrimaryColor),
    backgroundColor: _darkOnPrimaryColor,
    splashFactory: InkRipple.splashFactory,
    dividerColor: Colors.grey.withOpacity(0.3),
  );

  static final TextTheme _darkTextTheme = TextTheme(
      headline5: _darkScreenHeadingTextStyle,
      bodyText2: _darkScreenTaskNameTextStyle,
      bodyText1: _darkScreenTaskDurationTextStyle,
      headline1: _darkAppBarHeadingTextStyle,
      headline2: _darkSubHeadingTextStyle,
      subtitle1: _darkScreenHeadingTextStyle,
      headline3: _darkAppBarHeadingTextStyle,
      caption: _darkScreenTaskDurationTextStyle);
}
