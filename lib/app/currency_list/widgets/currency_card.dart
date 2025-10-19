import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:traveller/app/currency_detail/currency_detail_page.dart';
import 'package:traveller/app/currency_tab_container/bloc/currency_tab_bloc.dart';
import 'package:traveller/uikit/themes/colors/app_color_theme.dart';
import 'package:traveller/uikit/themes/text/app_text_theme.dart';

class CurrencyCard extends StatelessWidget {
  const CurrencyCard({super.key, this.subtitle, required this.cost});

  final String? subtitle;
  final double cost;

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTextTheme.of(context);
    final colorTheme = AppColorTheme.of(context);
    return Card(
      child: ListTile(
        onTap: () {
          context.read<CurrencyTabBloc>().add(CurrencyTabToggleBottomBar());
          context.read<CurrencyTabBloc>().add(
            CurrencyTabAddPage(
              CurrencyDetailPage(title: 'Австралийский Доллар'),
            ),
          );
        },
        minVerticalPadding: 25,
        leading: CircleAvatar(
          backgroundColor: colorTheme.primary,
          radius: 20,
          child: Text(
            'AUD',
            style: textTheme.title.copyWith(color: colorTheme.currencyISO),
          ),
        ),
        title: Text(
          'Австралийский доллар',
          style: textTheme.title.copyWith(color: colorTheme.title),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: subtitle != null
            ? Text(
                subtitle!,
                style: textTheme.subtitle.copyWith(color: colorTheme.subtitle),
              )
            : null,
        trailing: FittedBox(
          fit: BoxFit.scaleDown,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                cost.toString(),
                style: textTheme.title.copyWith(color: colorTheme.newsCost),
              ),
              SizedBox(width: 4),
              Image.asset('assets/icons/arrow_up.png', width: 12, height: 12),
              cost.round().isEven
                  ? Icon(size: 14, Icons.favorite_border)
                  : Icon(size: 14, Icons.favorite),
            ],
          ),
        ),
      ),
    );
  }
}
