import 'package:flutter/material.dart';
import 'package:traveller/app/currency_list/widgets/currency_card.dart';
import 'package:traveller/app/currency_list/widgets/search_view.dart';

class CurrencyListPage extends StatelessWidget {
  CurrencyListPage({super.key});

  final List<CurrencyCard> list = [
    CurrencyCard(cost: 10.99),
    CurrencyCard(cost: 21.86),
    CurrencyCard(cost: 28.91),
    CurrencyCard(cost: 54.52),
    CurrencyCard(cost: 44.95),
    CurrencyCard(subtitle: 'Greed', cost: 51.43),
    CurrencyCard(cost: 31.54),
    CurrencyCard(cost: 43.55),
    CurrencyCard(cost: 66.54),
    CurrencyCard(cost: 41.57),
    CurrencyCard(cost: 12.08),
    CurrencyCard(subtitle: 'Саси', cost: 41.46),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Курс валют')),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(22, 10, 22, 40),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsetsGeometry.only(bottom: 30),
              child: SearchView(),
            ),
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 500) {
                    return GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 2,
                      ),
                      itemBuilder: (context, index) => list[index],
                      itemCount: list.length,
                    );
                  } else {
                    return ListView.builder(
                      itemCount: list.length,
                      itemBuilder: (context, index) => list[index],
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
