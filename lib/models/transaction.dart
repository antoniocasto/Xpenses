import 'package:flutter/foundation.dart'; //utile se voglio importare solo i required

class Transaction {
  final String id; //id for transaction
  final String title; // title for transaction
  final double amount; // this is the amount in a currency
  final DateTime date; // contains data about time

  Transaction({
    @required this.id,
    this.title,
    this.amount,
    this.date,
  });
}
