import 'package:flutter/material.dart';
import 'package:traveller/uikit/themes/colors/app_color_theme.dart';
import 'package:traveller/uikit/themes/text/app_text_theme.dart';

class CurrencyInfoCard extends StatelessWidget {
  const CurrencyInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTextTheme.of(context);
    final colorTheme = AppColorTheme.of(context);
    return Container(
      padding: const EdgeInsets.fromLTRB(18, 24, 8, 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: Text(
                'Ср. 10:47 05.02.25',
                style: textTheme.title.copyWith(color: colorTheme.title),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 6),
            child: Text(
              '60.99',
              style: textTheme.title.copyWith(color: colorTheme.newsCost),
            ),
          ),
          Image.asset('assets/icons/arrow_up.png', width: 10, height: 10),
        ],
      ),
    );
  }
}
