import 'package:expenses_app/model/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionCard extends StatelessWidget {
  final Transaction _transaction;
  Function _deleteFunction;

  TransactionCard(this._transaction, this._deleteFunction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30.0,
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: FittedBox(
              child: Text(
                "R\$ ${_transaction.amount.toStringAsFixed(2)}",
              ),
            ),
          ),
        ),
        title: Text(
          _transaction.title,
          style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(DateFormat.yMMMMd().format(_transaction.date),
            style: TextStyle(fontSize: 12.0, color: Colors.grey)),
        trailing: IconButton(
            icon: Icon(Icons.delete),
            color: Theme.of(context).errorColor,
            onPressed: () => _deleteFunction(_transaction.id)),
      ),
    );
  }
}
