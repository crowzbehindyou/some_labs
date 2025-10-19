import 'package:flutter/material.dart';
import 'package:traveller/uikit/themes/text/app_text_style.dart';

class AppTextTheme extends ThemeExtension<AppTextTheme> {
  static AppTextTheme of(BuildContext context) {
    return Theme.of(context).extension<AppTextTheme>() ??
        _throwThemeNotFound(context);
  }

  final TextStyle title;
  final TextStyle subtitle;

  AppTextTheme._({required this.title, required this.subtitle});

  AppTextTheme.base()
    : title = AppTextStyle.title.value,
      subtitle = AppTextStyle.subtitle.value;

  @override
  ThemeExtension<AppTextTheme> copyWith({
    TextStyle? title,
    TextStyle? subtitle,
  }) {
    return AppTextTheme._(
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
    );
  }

  @override
  ThemeExtension<AppTextTheme> lerp(
    ThemeExtension<AppTextTheme>? other,
    double t,
  ) {
    if (other is! AppTextTheme) {
      return this;
    }
    return AppTextTheme._(
      title: TextStyle.lerp(title, other.title, t)!,
      subtitle: TextStyle.lerp(subtitle, other.subtitle, t)!,
    );
  }
}

Never _throwThemeNotFound(BuildContext context) =>
    throw Exception('$AppTextTheme not found in $context');
