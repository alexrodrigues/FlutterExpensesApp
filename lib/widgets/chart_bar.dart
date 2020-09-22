import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String _label;
  final double _amount;
  final double _amoutPctOfTotal;
  ChartBar(this._label, this._amount, this._amoutPctOfTotal);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("R\$${this._amount.toStringAsFixed(0)}"),
          SizedBox(
            height: 4.0,
          ),
          Container(
            height: 60,
            width: 10,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey, width: 1.0)),
                ),
                FractionallySizedBox(
                  heightFactor: this._amoutPctOfTotal,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(this._label),
        ],
      ),
    );
  }
}
