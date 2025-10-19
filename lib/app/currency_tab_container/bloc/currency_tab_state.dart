part of 'currency_tab_bloc.dart';

sealed class CurrencyTabState extends Equatable {
  final bool showBottomBar;
  final List<Widget> pages;

  const CurrencyTabState({this.pages = const [], this.showBottomBar = true});

  @override
  List<Object> get props => [pages, showBottomBar];
}

final class CurrencyTabPages extends CurrencyTabState {
  const CurrencyTabPages({super.pages = const [], super.showBottomBar = true});

  CurrencyTabPages copyWith({List<Widget>? pages, bool? showBottomBar}) {
    return CurrencyTabPages(
      pages: pages ?? this.pages,
      showBottomBar: showBottomBar ?? this.showBottomBar,
    );
  }

  @override
  List<Object> get props => [pages, showBottomBar];
}
