import 'package:flutter/material.dart';

import '../widgets/transaction_text.dart';
import '../widgets/transaction_button.dart';

class TransactionInput extends StatefulWidget {
  final Function _save;

  TransactionInput(this._save);

  @override
  _TransactionInputState createState() => _TransactionInputState();
}

class _TransactionInputState extends State<TransactionInput> {
  final _titleController = TextEditingController();

  final _amountController = TextEditingController();

  void _submit() {
    final _title = _titleController.text;
    final _value = double.parse(_amountController.text);

    if (_title.isNotEmpty && _value > 0) {
      widget._save(_title, _value);
      Navigator.of(context).pop();
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
