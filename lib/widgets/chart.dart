import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../model/transaction.dart';
import './chart_bar.dart';

class Chart extends StatelessWidget {
  static const _AMOUNT = "amount";
  static const _DAY = "day";
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
      return {
        _DAY: DateFormat.E().format(weekDay).substring(0, 1),
        _AMOUNT: totalAmount
      };
    });
  }

  double get maxSpending {
    return getGroupTransactions.fold(0.0, (sum, element) {
      return sum + element[_AMOUNT];
    });
  }

  Chart(this._list);

  @override
  Widget build(BuildContext context) {
    print(_list.toString());
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(16.0),
      child: Row(
        children: getGroupTransactions.map((e) {
          return ChartBar(e[_DAY], e[_AMOUNT],
              maxSpending == 0.0 ? 0.0 : (e[_AMOUNT] as double) / maxSpending);
        }).toList(),
      ),
    );
  }
}
