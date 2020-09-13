import 'package:flutter/material.dart';

import '../widgets/transaction_text.dart';
import '../widgets/transaction_button.dart';

class TransactionInput extends StatelessWidget {
  final Function _onTextChanged;
  TransactionInput(this._onTextChanged);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: [
          TransactionTextField('Titlte', 0, _onTextChanged),
          TransactionTextField('Amount', 1, _onTextChanged),
          TransactionButton('Save', () {})
        ],
      ),
    );
  }
}
