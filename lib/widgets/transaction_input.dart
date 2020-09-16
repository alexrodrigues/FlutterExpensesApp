import 'package:flutter/material.dart';

import '../widgets/transaction_text.dart';
import '../widgets/transaction_button.dart';

class TransactionInput extends StatelessWidget {
  final Function _save;
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  TransactionInput(this._save);

  void _submit() {
    final _title = _titleController.text;
    final _value = double.parse(_amountController.text);

    if (_title.isNotEmpty && _value > 0) {
      _save(_title, _value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: [
          TransactionTextField('Title', _titleController, () => {}),
          TransactionTextField(
            'Amount',
            _amountController,
            () => _submit(),
            inputType: TextInputType.numberWithOptions(decimal: true),
          ),
          TransactionButton('Save', () => _submit())
        ],
      ),
    );
  }
}
