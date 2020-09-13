import 'package:flutter/material.dart';

import 'transaction_input.dart';
import '../model/transaction.dart';
import '../repository/transaction_repository.dart';
import 'transaction_list.dart';

class TransactionFragment extends StatefulWidget {
  @override
  _TransactionFragmentState createState() => _TransactionFragmentState();
}

class _TransactionFragmentState extends State<TransactionFragment> {
  final List<Transaction> _list = TransactionRepository.fetchList();

  void _addNewTransaction(String title, double amount) {
    if (title == null && amount == null) {
      return;
    }
    final newTransaction = Transaction(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        date: DateTime.now());

    setState(() {
      _list.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          width: double.infinity,
          child: Card(
            child: Text('Chart!'),
          ),
        ),
        TransactionInput(_addNewTransaction),
        TransactionList(_list),
      ],
    );
  }
}
