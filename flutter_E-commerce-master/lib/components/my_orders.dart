import 'package:flutter/material.dart';
import 'package:fashkart/main.dart';
import 'package:fashkart/pages/myorders.dart';


class My_orders extends StatefulWidget {
  @override
  _My_ordersState createState() => _My_ordersState();
}

class _My_ordersState extends State<My_orders> {
  var My_orders =  [
    {
      "name": "Trouser :",
      "picture": "images/products/f.jpeg",
      "Purchase Date": "12/02/2019",
      "Delivery Date": "13/02/2019",
    },
    {
      "name": "Dress :",
      "picture": "images/products/d.jpeg",
      "Purchase Date": "12/12/2017",
      "Delivery Date": "16/12/2017",
    },
    {
      "name": "shoes :",
      "picture": "images/products/sh.jpeg",
      "Purchase Date": "04/02/2020",
      "Delivery Date": "10/02/2020",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: My_orders.length,
        itemBuilder: (context,index){
          return Single_My_orders(
            order_prod_name: My_orders[index]["name"],
            order_prod_picture: My_orders[index]["picture"],
            order_prod_date: My_orders[index]["Purchase Date"],
            order_prod_delivery_date: My_orders[index]["Delivery Date"],
          );
        });
  }
}
class Single_My_orders extends StatelessWidget {
  final order_prod_name;
  final order_prod_picture;
  final order_prod_date;
  final order_prod_delivery_date;

  Single_My_orders({
    this.order_prod_name,
    this.order_prod_picture,
    this.order_prod_date,
    this.order_prod_delivery_date,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: (){},
        leading: new Image.asset(order_prod_picture,width: 90.0,height: 110.0,),
        title: new Text(order_prod_name,style: TextStyle(fontWeight: FontWeight.bold),),
        subtitle: new Column(
          children: <Widget>[
            new Column(
              children: <Widget>[
                Padding(padding: const EdgeInsets.all(8.0),
                  child: new Text("Purchase Date :"),),
                Padding(padding: const EdgeInsets.all(2.0),
                  child: new Text(order_prod_date,style: TextStyle(fontWeight: FontWeight.bold),),),
                Padding(padding: const EdgeInsets.all(8.0),
                  child: new Text("Delivery Date :"),),
                Padding(padding: const EdgeInsets.all(2.0),
                  child: new Text(order_prod_delivery_date,style: TextStyle(fontWeight: FontWeight.bold),),),
                
                new Container(
                  child: Text("Thank You And Share @items",style: TextStyle(color: Colors.blue),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

