import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:traveller/app/currency_list/currency_list_page.dart';
import 'package:traveller/app/currency_tab_container/currency_tab_state.dart';

class CurrencyTabContainer extends StatelessWidget {
  const CurrencyTabContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => CurrencyTabState([CurrencyListPage()]),
      child: Consumer<CurrencyTabState>(
        builder: (_, CurrencyTabState state, __) {
          return state.pages.last;
        },
      ),
    );
  }
}
