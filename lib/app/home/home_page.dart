import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveller/app/currency_tab_container/bloc/currency_tab_bloc.dart';
import 'package:traveller/app/currency_tab_container/currency_tab_container.dart';
import 'package:traveller/app/home/widgets/tab_widget.dart';
import 'package:traveller/app/news_list/news_list_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ValueNotifier<int> _selectedIndex = ValueNotifier<int>(0);
  late final List<Widget> _pages;
  @override
  void initState() {
    super.initState();
    _pages = <Widget>[CurrencyTabContainer(), NewsListPage()];
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CurrencyTabBloc(),
      child: BlocBuilder<CurrencyTabBloc, CurrencyTabState>(
        builder: (context, state) {
          return ValueListenableBuilder(
            valueListenable: _selectedIndex,
            builder: (context, value, child) {
              return Scaffold(
                body: _pages[value],
                bottomNavigationBar: state.showBottomBar
                    ? Container(
                        decoration: BoxDecoration(
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 25,
                              offset: Offset(0.0, 0.75),
                            ),
                          ],
                        ),
                        child: BottomNavigationBar(
                          currentIndex: _selectedIndex.value,
                          onTap: (index) => _selectedIndex.value = index,
                          items: [
                            BottomNavigationBarItem(
                              icon: TabWidget(
                                assetPath: 'assets/icons/home.png',
                                isSelected:
                                    _pages[_selectedIndex.value]
                                        is CurrencyTabContainer,
                              ),
                              label: 'Курс Валют',
                            ),
                            BottomNavigationBarItem(
                              icon: TabWidget(
                                assetPath: 'assets/icons/news.png',
                                isSelected:
                                    _pages[_selectedIndex.value]
                                        is NewsListPage,
                              ),
                              label: 'Новости',
                            ),
                          ],
                        ),
                      )
                    : null,
              );
            },
          );
        },
      ),
    );
  }
}
