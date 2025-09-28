import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:traveller/app/currency_detail/currency_detail_page.dart';
import 'package:traveller/app/currency_tab_container/currency_tab_state.dart';

class CurrencyCard extends StatelessWidget {
  const CurrencyCard({super.key, this.subtitle, required this.cost});

  final String? subtitle;
  final double cost;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          context.read<CurrencyTabState>().addPage(
            CurrencyDetailPage(title: 'Австралийский доллар'),
          );
        },
        minVerticalPadding: 25,
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).primaryColor,
          radius: 20,
          child: Text(
            'AUD',
            style: TextStyle(
              fontFamily: 'InterTight',
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        title: Text(
          'Австралийский доллар',
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: subtitle != null
            ? Text(
                subtitle!,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 10,
                  color: Colors.grey,
                ),
              )
            : null,
        trailing: FittedBox(
          fit: BoxFit.scaleDown,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                cost.toString(),
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF1FD522),
                ),
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

class CurrencyIcon extends StatelessWidget {
  const CurrencyIcon({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.tight(Size.square(40)),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontFamily: 'InterTight',
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
