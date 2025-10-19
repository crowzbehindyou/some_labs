import 'package:flutter/material.dart';
import 'package:traveller/app/utils/url_launcher.dart';
import 'package:traveller/uikit/themes/colors/app_color_theme.dart';
import 'package:traveller/uikit/themes/text/app_text_theme.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  static const String _url = 'https://flutter.dev';

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTextTheme.of(context);
    final colorTheme = AppColorTheme.of(context);
    return GestureDetector(
      onTap: () => tryLaunchUrl(_url),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text(
              'Вводятся новые правила допуска на финансовый рынок кредитных потребительских кооперативов',
              style: textTheme.title.copyWith(color: colorTheme.title),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ср. 10:47 05.02.25',
                    style: textTheme.title.copyWith(
                      color: colorTheme.newsSubtitle,
                    ),
                  ),
                  Text(
                    'cbr.ru',
                    style: textTheme.title.copyWith(
                      color: colorTheme.newsSubtitle,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
