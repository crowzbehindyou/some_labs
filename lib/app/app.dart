import 'package:flutter/material.dart';
import 'package:traveller/app/home/home_page.dart';
import 'package:traveller/uikit/themes/app_theme_data.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: AppThemeData.lightTheme, home: HomePage());
  }
}
