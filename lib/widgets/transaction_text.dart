import 'package:flutter/material.dart';

class TransactionTextField extends StatelessWidget {
  final String _title;
  final int tag;
  final Function _callback;

  TransactionTextField(this._title, this.tag, this._callback);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        onChanged: (text) {
          _callback(text, tag);
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
