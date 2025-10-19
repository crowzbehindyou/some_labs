import 'package:flutter/material.dart';
import 'package:traveller/uikit/themes/colors/app_colors.dart';

class AppColorTheme extends ThemeExtension<AppColorTheme> {
  static AppColorTheme of(BuildContext context) =>
      Theme.of(context).extension<AppColorTheme>() ??
      _throwThemeNotFound(context);

  final Color primary;
  final Color background;
  final Color secondary;
  final Color newsSubtitle;
  final Color newsCost;
  final Color title;
  final Color currencyISO;
  final Color subtitle;

  AppColorTheme._({
    required this.primary,
    required this.background,
    required this.secondary,
    required this.newsSubtitle,
    required this.newsCost,
    required this.title,
    required this.currencyISO,
    required this.subtitle,
  });

  const AppColorTheme.light()
    : primary = AppColors.lightBlue,
      background = AppColors.light,
      secondary = AppColors.lightGrey,
      newsSubtitle = AppColors.mediumGrey,
      newsCost = AppColors.grass,
      title = AppColors.black,
      currencyISO = AppColors.white,
      subtitle = AppColors.grey;

  @override
  ThemeExtension<AppColorTheme> copyWith({
    Color? primary,
    Color? background,
    Color? secondary,
    Color? newsSubtitle,
    Color? newsCost,
    Color? title,
    Color? currencyISO,
    Color? subtitle,
  }) {
    return AppColorTheme._(
      primary: primary ?? this.primary,
      background: background ?? this.background,
      secondary: secondary ?? this.secondary,
      newsSubtitle: newsSubtitle ?? this.newsSubtitle,
      newsCost: newsCost ?? this.newsCost,
      title: title ?? this.title,
      currencyISO: currencyISO ?? this.currencyISO,
      subtitle: subtitle ?? this.subtitle,
    );
  }

  @override
  ThemeExtension<AppColorTheme> lerp(
    ThemeExtension<AppColorTheme>? other,
    double t,
  ) {
    if (other is! AppColorTheme) {
      return this;
    }
    return AppColorTheme._(
      primary: Color.lerp(primary, other.primary, t)!,
      background: Color.lerp(background, other.background, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      newsSubtitle: Color.lerp(newsSubtitle, other.newsSubtitle, t)!,
      newsCost: Color.lerp(newsCost, other.newsCost, t)!,
      title: Color.lerp(title, other.title, t)!,
      currencyISO: Color.lerp(currencyISO, other.currencyISO, t)!,
      subtitle: Color.lerp(subtitle, other.subtitle, t)!,
    );
  }
}

Never _throwThemeNotFound(BuildContext context) =>
    throw Exception('$AppColorTheme not found in $context');
