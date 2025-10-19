import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'currency_tab_event.dart';
part 'currency_tab_state.dart';

class CurrencyTabBloc extends Bloc<CurrencyTabEvent, CurrencyTabState> {
  CurrencyTabBloc() : super(CurrencyTabPages()) {
    on<CurrencyTabAddPage>((event, emit) {
      final current = state as CurrencyTabPages;
      final updated = [...current.pages, event.page];
      emit(current.copyWith(pages: updated));
    });
    on<CurrencyTabRemovePage>((event, emit) {
      final current = state as CurrencyTabPages;
      if (current.pages.isNotEmpty) {
        final updated = [...current.pages]..removeLast();
        emit(current.copyWith(pages: updated));
      }
    });
    on<CurrencyTabToggleBottomBar>((event, emit) {
      final current = state as CurrencyTabPages;
      emit(current.copyWith(showBottomBar: !current.showBottomBar));
    });
  }
}
