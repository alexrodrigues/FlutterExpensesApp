import 'package:flutter/material.dart';

class TransactionTextField extends StatelessWidget {
  final String _title;
  final Function _callback;

  TransactionTextField(this._title, this._callback);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        onChanged: (text) {
          _callback(text);
        },
        cursorColor: Colors.green,
        decoration: InputDecoration(
            hintStyle: TextStyle(color: Colors.green),
            border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.green)),
            labelStyle: TextStyle(color: Colors.green),
            labelText: _title,
            hoverColor: Colors.green),
      ),
    );
  }
}
