import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveller/app/currency_list/currency_list_page.dart';
import 'package:traveller/app/currency_tab_container/bloc/currency_tab_bloc.dart';

class CurrencyTabContainer extends StatelessWidget {
  const CurrencyTabContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrencyTabBloc, CurrencyTabState>(
      builder: (context, state) {
        return switch (state) {
          CurrencyTabPages() =>
            state.pages.isNotEmpty ? state.pages.last : CurrencyListPage(),
        };
      },
    );
  }
}
