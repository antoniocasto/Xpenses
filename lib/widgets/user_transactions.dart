import 'package:app_spese/models/transaction.dart';
import 'package:app_spese/widgets/new_transaction.dart';
import 'package:app_spese/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(
            _addNewTransaction), //se passo il metodo con le parentesi viene eseguito subito. Così invece passo il puntatore del metodo senza eseguirlo.
      ],
    );
  }
}
