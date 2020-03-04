import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spendingAmount;
  final double spendingPctOfTotal; //spending percentage over total

  ChartBar({this.label, this.spendingAmount, this.spendingPctOfTotal});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text('€${spendingAmount.toStringAsFixed(0)}'),
          SizedBox(
            height: 4,
          ),
          Container(
            height: 60,
            width: 4,
            child: Stack(
              children: <Widget>[
                Container(
                  //Per creare la barra esterna da riempire
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    color: Color.fromRGBO(220, 220, 220, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                FractionallySizedBox(
                  heightFactor: spendingPctOfTotal,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(label),
        ],
      ),
    );
  }
}
