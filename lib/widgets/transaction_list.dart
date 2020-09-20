import 'package:flutter/material.dart';

import '../model/transaction.dart';
import './transaction_card.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _list;
  TransactionList(this._list);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: _list.isEmpty
          ? Column(
              children: [
                Text(
                  'No transaction to show 🤪',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0),
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
                return TransactionCard(_list[index]);
              },
              itemCount: _list.length,
            ),
    );
  }
}
