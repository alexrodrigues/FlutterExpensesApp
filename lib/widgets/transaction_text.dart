import 'package:flutter/material.dart';

class TransactionTextField extends StatelessWidget {
  final String _title;
  final TextEditingController _controller;

  TransactionTextField(this._title, this._controller);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: _controller,
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
