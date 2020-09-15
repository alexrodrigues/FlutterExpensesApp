import 'package:flutter/material.dart';

import '../model/transaction.dart';
import './transaction_card.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _list;
  TransactionList(this._list);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return TransactionCard(_list[index]);
        },
        itemCount: _list.length,
      ),
    );
  }
}
