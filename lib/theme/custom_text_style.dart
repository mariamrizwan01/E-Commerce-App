import 'package:flutter/material.dart';
import 'package:mariam_s_application2/core/utils/size_utils.dart';
import 'package:mariam_s_application2/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBluegray400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodyLargeBluegray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray600,
      );
  static get bodyLargeGray90002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90002,
      );
  static get bodyLargeGray9000218 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90002,
        fontSize: 18.fSize,
      );
  static get bodyLargePoppinsff1e222b =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: Color(0XFF1E222B),
      );
  static get bodyLargeff2a4ba0 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF2A4BA0),
      );
  static get bodyMedium33000000 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0X33000000),
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.2),
      );
  static get bodyMediumBlack900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumBluegray20001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray20001,
      );
  static get bodyMediumBluegray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodyMediumBluegray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray600,
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumGray90002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90002,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumff000000 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF000000),
      );
  static get bodyMediumff8791a5 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF8791A5),
      );
  static get bodyMediumffffffff => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFFFFFFFF),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallBluegray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 11.fSize,
      );
  static get bodySmallBluegray400_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodySmallGray50 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50,
      );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
        fontSize: 11.fSize,
      );
  static get bodySmallGray90002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90002,
      );
  static get bodySmallff61697c => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF61697C),
      );
  static get bodySmallff8791a5 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF8791A5),
      );
  // Display text style
  static get displayMediumGray90001 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.gray90001,
      );
  // Headline text style
  static get headlineLargeGray90001 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w400,
      );
  static get headlineLargeGray90002 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w600,
      );
  static get headlineLargeGray90002Medium =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w500,
      );
  static get headlineLargeGray90002Regular =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w400,
      );
  static get headlineLargeGray90002_1 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray90002,
      );
  static get headlineMediumGray90002 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w700,
      );
  static get headlineMediumGray90002Medium =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w500,
      );
  static get headlineMediumGray90002Regular =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w400,
      );
  static get headlineMediumGray90002SemiBold =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w600,
      );
  static get headlineMediumOnPrimary =>
      theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get headlineMediumff1e222b => theme.textTheme.headlineMedium!.copyWith(
        color: Color(0XFF1E222B),
      );
  static get headlineMediumff1e222bRegular =>
      theme.textTheme.headlineMedium!.copyWith(
        color: Color(0XFF1E222B),
        fontWeight: FontWeight.w400,
      );
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray90001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90001,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray90002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90002,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeffffffff => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFFFFFFFF),
        fontSize: 13.fSize,
      );
  // Manrope text style
  static get manropeGray50 => TextStyle(
        color: appTheme.gray50,
        fontSize: 110.fSize,
        fontWeight: FontWeight.w800,
      ).manrope;
  static get manropeYellow800 => TextStyle(
        color: appTheme.yellow800,
        fontSize: 300.fSize,
        fontWeight: FontWeight.w200,
      ).manrope;
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeBlack90020 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 20.fSize,
      );
  static get titleLargeGray90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray90001,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeGray90001Bold => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray90001,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeGray90002 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray90002,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeGray9000220 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray90002,
        fontSize: 20.fSize,
      );
  static get titleLargeGray90002Medium => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray90002,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeGray90002Regular => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray90002,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w300,
      );
  static get titleLargeff1e222b => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFF1E222B),
        fontSize: 20.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeff1e222bBold => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFF1E222B),
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBluegray20001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray20001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray9000118 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90001,
        fontSize: 18.fSize,
      );
  static get titleMediumGray90002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray9000218 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90002,
        fontSize: 18.fSize,
      );
  static get titleMediumGray90002Medium =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray90002Medium18 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90002,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray90002SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90002,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppinsGray90001 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsff1e222b =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: Color(0XFF1E222B),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumff2a4ba0 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF2A4BA0),
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallBluegray400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray600,
      );
  static get titleSmallGray50 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallGray50_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50,
      );
  static get titleSmallGray600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray800,
      );
  static get titleSmallGray90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90001,
      );
  static get titleSmallGray90001Medium => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray90002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray90002_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90002,
      );
  static get titleSmallInterGray90002 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.gray90002.withOpacity(0.53),
        fontSize: 15.fSize,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get manrope {
    return copyWith(
      fontFamily: 'Manrope',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
