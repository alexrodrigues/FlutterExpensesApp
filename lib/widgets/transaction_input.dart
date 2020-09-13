import 'package:flutter/material.dart';

import '../widgets/transaction_text.dart';
import '../widgets/transaction_button.dart';

class TransactionInput extends StatelessWidget {
  final Function _save;
  String title;
  double amount;
  TransactionInput(this._save);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: [
          TransactionTextField('Title', (text) {
            title = text;
          }),
          TransactionTextField('Amount', (text) {
            amount = double.parse(text);
          }),
          TransactionButton('Save', () => _save(title, amount))
        ],
      ),
    );
  }
}
