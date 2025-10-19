import 'package:flutter/material.dart';
import 'package:traveller/uikit/themes/colors/app_color_theme.dart';
import 'package:traveller/uikit/themes/text/app_text_theme.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTextTheme.of(context);
    final colorTheme = AppColorTheme.of(context);
    final OutlineInputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(7),
      borderSide: BorderSide(color: Colors.grey),
    );

    return TextField(
      style: textTheme.title.copyWith(color: colorTheme.title),
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.fromLTRB(13, 9, 11, 9),
          child: SizedBox.square(
            dimension: 20,
            child: Image.asset('assets/icons/search.png'),
          ),
        ),
        hintText: 'Поиск',
        hintStyle: textTheme.title.copyWith(
          color: const Color(0xFF7C7B7B),
          fontWeight: FontWeight.w400,
        ),
        border: border,
        enabledBorder: border,
        focusedBorder: border.copyWith(
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}
