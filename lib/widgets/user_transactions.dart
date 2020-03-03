import 'package:app_spese/models/transaction.dart';
import 'package:app_spese/widgets/new_transaction.dart';
import 'package:app_spese/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'New Jacket', amount: 129.99, date: DateTime.now()),
  ];

  void _addNewTransaction(String title, double amount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        date: DateTime.now());

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(
            _addNewTransaction), //se passo il metodo con le parentesi viene eseguito subito. Così invece passo il puntatore del metodo senza eseguirlo.
        TransactionList(_userTransactions),
      ],
    );
  }
}
