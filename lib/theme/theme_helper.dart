import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mariam_s_application2/core/utils/pref_utils.dart';
import 'package:mariam_s_application2/core/utils/size_utils.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generatorif (!_supportedCustomColor.containsKey(_appTheme)){  throw Exception(               "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");      } //return theme from map
    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator if (!_supportedColorScheme.containsKey(_appTheme)){   throw Exception(                "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");       }  //return theme from map
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onPrimary,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorScheme.primary,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.surface;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray30001,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.gray90001,
          fontSize: 16.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.gray90001,
          fontSize: 14.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.blueGray600,
          fontSize: 12.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: appTheme.gray50,
          fontSize: 50.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w800,
        ),
        headlineLarge: TextStyle(
          color: appTheme.gray50,
          fontSize: 30.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: appTheme.gray90001,
          fontSize: 26.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w800,
        ),
        labelLarge: TextStyle(
          color: appTheme.blueGray400,
          fontSize: 12.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 11.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w800,
        ),
        titleLarge: TextStyle(
          color: colorScheme.primaryContainer.withOpacity(1),
          fontSize: 22.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 16.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 14.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w600,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF2A4BA0),
    primaryContainer: Color(0X87F7F8FA),

    // On colors(text colors)
    onPrimary: Color(0XFFFFFFFF),
    onPrimaryContainer: Color(0XFF142F74),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber200 => Color(0XFFFFDC82);

  // Black
  Color get black900 => Color(0XFF000000);

  // BlueGray
  Color get blueGray100 => Color(0XFFD4D4D4);
  Color get blueGray10060 => Color(0X60D8D8D8);
  Color get blueGray200 => Color(0XFFA1ABC0);
  Color get blueGray20001 => Color(0XFFB2BACE);
  Color get blueGray400 => Color(0XFF8791A5);
  Color get blueGray600 => Color(0XFF61697C);
  Color get blueGray800 => Color(0XFF3D4453);

  // DeepOrange
  Color get deepOrange100 => Color(0XFFFFC3BB);

  // Gray
  Color get gray100 => Color(0XFFF7F4EE);
  Color get gray200 => Color(0XFFECECEC);
  Color get gray300 => Color(0XFFE4E4E4);
  Color get gray30001 => Color(0XFFE0E1ED);
  Color get gray50 => Color(0XFFFAFAFC);
  Color get gray500 => Color(0XFFA0A0AB);
  Color get gray5001 => Color(0XFFFCFCFC);
  Color get gray5002 => Color(0XFFF7F7FB);
  Color get gray600 => Color(0XFF767683);
  Color get gray800 => Color(0XFF3E3E3E);
  Color get gray900 => Color(0XFF130F26);
  Color get gray90001 => Color(0XFF1E222B);
  Color get gray90002 => Color(0XFF1A1D1F);

  // Grayf
  Color get gray9003f => Color(0X3F043417);

  // Indigo
  Color get indigo50 => Color(0XFFE9EAF4);
  Color get indigo5001 => Color(0XFFEBEBFA);

  // LightGreen
  Color get lightGreen100 => Color(0XFFE4DDCB);
  Color get lightGreen600 => Color(0XFF78B159);

  // Lime
  Color get lime100 => Color(0XFFEFFAC5);

  // Orange
  Color get orange900 => Color(0XFFF55A00);

  // Yellow
  Color get yellow700 => Color(0XFFFFC73A);
  Color get yellow800 => Color(0XFFF9B023);
  Color get yellow80001 => Color(0XFFE0B420);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
