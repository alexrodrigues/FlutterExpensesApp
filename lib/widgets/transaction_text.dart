import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransactionTextField extends StatelessWidget {
  final String _title;
  final TextEditingController _controller;
  final TextInputType inputType;
  final Function _onSubmit;
  TransactionTextField(this._title, this._controller, this._onSubmit,
      {this.inputType = TextInputType.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Platform.isIOS
          ? CupertinoTextField(
              placeholder: _title,
            )
          : TextField(
              onSubmitted: (_) => _onSubmit,
              keyboardType: inputType,
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
