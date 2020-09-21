import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../model/transaction.dart';

class Chart extends StatelessWidget {
  final List<Transaction> _list;
  List<Map<String, Object>> get getGroupTransactions {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(
        Duration(days: index),
      );
      var totalAmount = 0.0;
      _list.forEach((element) {
        if (element.date.day == weekDay.day &&
            element.date.month == weekDay.month &&
            element.date.year == weekDay.year) {
          totalAmount += element.amount;
        }
      });
      return {'day': DateFormat.E().format(weekDay), 'amount': totalAmount};
    });
  }

  Chart(this._list);

  @override
  Widget build(BuildContext context) {
    print(_list.toString());
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(16.0),
      child: Row(children: []),
    );
  }
}
