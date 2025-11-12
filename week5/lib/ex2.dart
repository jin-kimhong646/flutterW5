import 'package:flutter/material.dart';

void main (){
  runApp(
    MaterialApp(
     home:Scaffold(
      body: Container(
         padding:EdgeInsets.all(40),
         margin: EdgeInsets.all(40),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
            ),
            padding: EdgeInsets.all(40),
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.check),
                  Padding(padding: EdgeInsets.only(right: 20,)),
                  Text("Submit ", style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
          )
        ],
      ),
      ),
     ) , 
    )
  );
}