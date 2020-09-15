import 'package:expenses/model/transaction.dart';
import 'package:expenses/widgets/transaction_list.dart';
import 'package:flutter/cupertino.dart';

import 'new_transication.dart';

class UserTransication extends StatefulWidget {
  @override
  _UserTransicationState createState() => _UserTransicationState();
}

class _UserTransicationState extends State<UserTransication> {
   final List<Transaction> _userTransaction = [
Transaction(
      id: 't1',
      title: 'New Shose',
      amount: 89.0,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'New laptop',
      amount: 84.0,
      date: DateTime.now(),
    )
  ];
  //
  void _addNewTrasaction(String txTitle, double txAmount){
    final newTx = Transaction(
      title: txTitle,
     amount: txAmount, date: 
     DateTime.now(),
     id: DateTime.now().toString());
      setState(() {
      _userTransaction.add(newTx);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        New_Transication(_addNewTrasaction),
        TransactionListState(_userTransaction),
      ],
    );
   
  }
}