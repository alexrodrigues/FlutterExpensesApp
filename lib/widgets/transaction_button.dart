import 'package:flutter/material.dart';

class TransactionButton extends StatelessWidget {
  final String _title;
  final Function _callback;
  TransactionButton(this._title, this._callback);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Theme.of(context).textTheme.button.color,
        color: Colors.green,
        child: Text(_title),
        onPressed: _callback,
      ),
    );
  }
}
