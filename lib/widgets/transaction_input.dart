import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  DateTime _pickedDate;

  void _submit() {
    final _title = _titleController.text;
    final _value = double.parse(_amountController.text);

    if (_title.isNotEmpty && _value > 0 && _pickedDate != null) {
      widget._save(_title, _value, _pickedDate);
      Navigator.of(context).pop();
    }
  }

  void _presentDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2020),
            lastDate: DateTime.now())
        .then((value) {
      if (value == null) {
        return;
      }
      setState(() {
        _pickedDate = value;
      });
    });
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
          Container(
            height: 70.0,
            child: Row(
              children: [
                Expanded(
                  child: Text(_pickedDate == null
                      ? 'No text chosen!'
                      : 'Picked date: ${DateFormat.yMd().format(_pickedDate)}'),
                ),
                FlatButton(
                  onPressed: _presentDatePicker,
                  child: Text(
                    'Choose a date',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  textColor: Theme.of(context).primaryColor,
                )
              ],
            ),
          ),
          TransactionButton('Save', () => _submit())
        ],
      ),
    );
  }
}
