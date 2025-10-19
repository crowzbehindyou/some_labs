import 'package:flutter/material.dart';
import 'package:traveller/uikit/themes/colors/app_color_theme.dart';
import 'package:traveller/uikit/themes/text/app_text_theme.dart';

abstract class AppThemeData {
  static final _textTheme = AppTextTheme.base();
  static const _lightColorTheme = AppColorTheme.light();

  static final lightTheme = ThemeData(
    extensions: [_lightColorTheme, _textTheme],
    brightness: Brightness.light,
    primaryColor: _lightColorTheme.primary,
    scaffoldBackgroundColor: _lightColorTheme.background,
    appBarTheme: AppBarTheme(
      backgroundColor: _lightColorTheme.background,
      elevation: 0,
      titleTextStyle: _textTheme.title.copyWith(
        fontSize: 16,
        color: _lightColorTheme.title,
      ),
      centerTitle: true,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: _lightColorTheme.background,
      selectedItemColor: _lightColorTheme.primary,
      unselectedItemColor: _lightColorTheme.secondary,
      selectedLabelStyle: _textTheme.title.copyWith(
        color: _lightColorTheme.primary,
      ),
      unselectedLabelStyle: _textTheme.title.copyWith(
        color: _lightColorTheme.primary,
      ),
    ),
  );
}
