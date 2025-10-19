import 'package:flutter/painting.dart';

const _fontFamily = 'Inter';

enum AppTextStyle {
  title(
    TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w700,
      fontFamily: _fontFamily,
    ),
  ),
  subtitle(
    TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w700,
      fontFamily: _fontFamily,
    ),
  );

  final TextStyle value;

  const AppTextStyle(this.value);
}
