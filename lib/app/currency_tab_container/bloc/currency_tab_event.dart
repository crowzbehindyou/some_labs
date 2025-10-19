part of 'currency_tab_bloc.dart';

sealed class CurrencyTabEvent extends Equatable {
  const CurrencyTabEvent();

  @override
  List<Object> get props => [];
}

final class CurrencyTabAddPage extends CurrencyTabEvent {
  final Widget page;
  const CurrencyTabAddPage(this.page);
  @override
  List<Object> get props => [page];
}

final class CurrencyTabRemovePage extends CurrencyTabEvent {}

final class CurrencyTabToggleBottomBar extends CurrencyTabEvent {}
