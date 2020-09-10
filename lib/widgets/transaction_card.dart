import 'package:expenses_app/model/transaction.dart';
import 'package:flutter/material.dart';

import 'package:expenses_app/model/transaction.dart';

class TransactionCard extends StatelessWidget {
  final Transaction _transaction;
  TransactionCard(this._transaction);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Container(
            child: Text(_transaction.amount.toString()),
          ),
          Column(
            children: [
              Text(_transaction.title),
              Text(_transaction.date.toString()),
            ],
          )
        ],
      ),
    );
  }
}
