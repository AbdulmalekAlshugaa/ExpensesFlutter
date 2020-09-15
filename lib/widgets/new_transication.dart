import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class New_Transication extends StatelessWidget {
final titleTextController =TextEditingController();
 final amountController = TextEditingController();
 final Function addTx;

 void SubmitData(){
   // convert to string and double
   final entredTitle = titleTextController.text; 
  final entredAmount = double.parse(amountController.text);
  if (entredTitle.isEmpty || entredAmount <=0 ){
    return;
  }

addTx(entredTitle,entredAmount);
 }

 New_Transication(this.addTx);
  
  @override
  Widget build(BuildContext context) {
    return  Card(
               elevation: 5,
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children:<Widget>[
                    TextField(decoration: InputDecoration(labelText: 'Title'),
                    controller: titleTextController,
                     onSubmitted: (_) => SubmitData(),
                   
                    ),
                    TextField(decoration: InputDecoration(labelText: 'Amount'),
                    controller: amountController,
                    keyboardType: TextInputType.number,
                    onSubmitted: (_) => SubmitData(),

                    
                    ),
                    FlatButton(child: Text('Add Transaction'),
                  
                    textColor: Colors.purple, onPressed: () { 
                      SubmitData();
                     },

                    )

                  ]
                ),
              )
              
            );
  }
}