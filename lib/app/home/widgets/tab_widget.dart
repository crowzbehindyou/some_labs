import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({
    super.key,
    required this.assetPath,
    required this.isSelected,
  });

  final String assetPath;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBarThemeData bottomBarTheme = Theme.of(
      context,
    ).bottomNavigationBarTheme;
    return SizedBox.square(
      dimension: 24,
      child: Image.asset(
        assetPath,
        color: isSelected
            ? bottomBarTheme.selectedItemColor
            : bottomBarTheme.unselectedItemColor,
      ),
    );
  }
}
