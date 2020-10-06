import 'package:flutter/material.dart';

import '../model/transaction.dart';
import './transaction_card.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _list;
  Function _deleteFunction;
  TransactionList(this._list, this._deleteFunction);

  @override
  Widget build(BuildContext context) {
    return _list.isEmpty
        ? Column(
            children: [
              Text(
                'No transaction to show 🤪',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26.0,
                    color: Theme.of(context).textTheme.bodyText1.color),
              ),
              SizedBox(
                height: 16.0,
              ),
              Container(
                  height: 250.0,
                  child: Image.asset(
                    'assets/images/waiting.png',
                    fit: BoxFit.fill,
                  ))
            ],
          )
        : ListView.builder(
            itemBuilder: (context, index) {
              return TransactionCard(_list[index], _deleteFunction);
            },
            itemCount: _list.length,
          );
  }
}
