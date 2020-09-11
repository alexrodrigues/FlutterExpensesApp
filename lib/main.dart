import 'package:flutter/material.dart';

import './model/transaction.dart';
import './repository/transaction_repository.dart';
import './widgets/transaction_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> list = TransactionRepository.fetchList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Flutter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: double.infinity,
              child: Card(
                child: Text('Chart!'),
              ),
            ),
            Column(
              children: list.map((element) {
                return TransactionCard(element);
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
