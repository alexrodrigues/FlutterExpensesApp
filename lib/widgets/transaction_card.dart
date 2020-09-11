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
            margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            decoration: BoxDecoration(border: Border.all(color: Colors.green)),
            padding: EdgeInsets.all(16.0),
            child: Text(
              _transaction.amount.toString(),
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.green),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _transaction.title,
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
              Text(_transaction.date.toString(),
                  style: TextStyle(fontSize: 12.0, color: Colors.grey)),
            ],
          )
        ],
      ),
    );
  }
}
