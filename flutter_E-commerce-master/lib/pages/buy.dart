import 'package:fashkart/components/cart_products.dart';
import 'package:fashkart/main.dart';
import 'package:fashkart/pages/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';


class Buy_now extends StatefulWidget {
  @override
  _Buy_nowState createState() => _Buy_nowState();
}

class _Buy_nowState extends State<Buy_now> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blueGrey[900],
        title: Text("Payment"),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.add_shopping_cart,color: Colors.white,),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              }),
          new IconButton(
              icon: Icon(
                Icons.home,color: Colors.white,),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => new HomePage()));
              }),
        ],
      ),
      body: new Column(
        children: <Widget>[
          new Text(" Card Number ",style: TextStyle(color: Colors.black,fontSize: 12.0),),
        SizedBox(height: 5.0),
          new TextFormField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(16),
            ],
            showCursor: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "XXXX - XXXX - XXXX - XXXX",
            hintMaxLines: 1,
              focusColor: Colors.red,
          ),
            keyboardType: TextInputType.number,
            obscureText: true,
          ),
          SizedBox(height: 20),
          new Text(" Card CVV ",style: TextStyle(color: Colors.black,fontSize: 12.0),),
          new TextFormField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(3),
            ],
            showCursor: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "XXX",
              hintMaxLines: 1,
              focusColor: Colors.blueGrey[900],
            ),
            keyboardType: TextInputType.number,
            obscureText: true,
          ),
          SizedBox(height: 20),
          new Text("Amount ",style: TextStyle(color: Colors.black,fontSize: 12.0),),
          new TextFormField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(3),
            ],
            showCursor: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: " Enter Amount",
              hintMaxLines: 1,
              focusColor: Colors.blueGrey[900],
            ),
            keyboardType: TextInputType.number,
          ),
          SizedBox(
            height: 20.0,
          ),
          new MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));
            },
            color: Colors.blueGrey[900],
            textColor: Colors.white,
            child: new Text("Proceed Payment"),
          ),
          SizedBox(height: 10.0),
          Divider(thickness: 10.0),
          SizedBox(height: 10.0),
          new MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            onPressed: (){},
            color: Colors.blueGrey[900],
            textColor: Colors.white,
            child: new Text("  Other Payment Option  "),
          ),
        ],
      ),
      );
  }
}

