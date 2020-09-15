import 'package:expenses/model/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class TransactionListState extends StatelessWidget {
  final List<Transaction> transication;

  TransactionListState(this.transication);
 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder ( 
        itemBuilder: (ctx, index){

          return  Card(
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Text(
                            '${transication[index].amount.toStringAsFixed(2)}' ,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.purple),
                            ),
                            margin: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 15,
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.purple, width: 2)),
                            padding: EdgeInsets.all(10),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                transication[index].title,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                DateFormat.yMMM().format(transication[index].date),
                               
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
        },
        itemCount: transication.length,      
      //  children: transication.map((tx) {
                   
      //      }).toList(),
               
      ),
    );
  }
}