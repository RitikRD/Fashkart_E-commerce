import 'package:flutter/material.dart';
import 'package:fashkart/main.dart';
import 'package:fashkart/components/my_orders.dart';

class Myorders extends StatefulWidget {
  @override
  _MyordersState createState() => _MyordersState();
}

class _MyordersState extends State<Myorders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text("My Orders"),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search), onPressed: (){}),
          new IconButton(icon: Icon(Icons.home), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));
          },
          ),
        ],
      ),
      body: new My_orders(),

    );
  }
}
