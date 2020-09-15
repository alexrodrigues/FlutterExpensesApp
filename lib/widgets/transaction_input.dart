import 'package:flutter/material.dart';

import '../widgets/transaction_text.dart';
import '../widgets/transaction_button.dart';

class TransactionInput extends StatelessWidget {
  final Function _save;
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  TransactionInput(this._save);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: [
          TransactionTextField('Title', _titleController),
          TransactionTextField('Amount', _amountController),
          TransactionButton(
              'Save',
              () => _save(
                  _titleController.text, double.parse(_amountController.text)))
        ],
      ),
    );
  }
}
