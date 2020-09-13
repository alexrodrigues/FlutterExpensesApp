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

  void _onTextChanged(String text, int tag) {
    print("New text: $text, tag: $tag");
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
        TransactionInput(_onTextChanged),
        TransactionList(_list),
      ],
    );
  }
}
