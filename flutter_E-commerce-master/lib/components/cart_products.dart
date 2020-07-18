import 'package:flutter/material.dart';
import 'package:fashkart/main.dart';


class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart =  [
    {
      "name": "Trouser :",
      "picture": "images/products/f.jpeg",
      "price":999,
      "size": "32",
      "color": "Blue",
      "qty": 2,
    },
    {
      "name": "Dress :",
      "picture": "images/products/d.jpeg",
      "price":999,
      "size": "9",
      "color": "Black",
      "qty": 1,
    },
    {
      "name": "shoes",
      "picture": "images/products/sh.jpeg",
      "price":3000,
      "size": "9",
      "color": "Black",
      "qty": 2,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context,index){
      return Single_cart_products(
        cart_prod_name: Products_on_the_cart[index]["name"],
        cart_prod_size: Products_on_the_cart[index]["size"],
        cart_prod_color: Products_on_the_cart[index]["color"],
        cart_prod_qty: Products_on_the_cart[index]["qty."],
        cart_prod_price: Products_on_the_cart[index]["price"],
        cart_prod_picture: Products_on_the_cart[index]["picture"],
      );
    });
  }
}
class Single_cart_products extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_products({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_qty,
});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: (){},
        leading: new Image.asset(cart_prod_picture,width: 70.0,height: 70.0,),
        title: new Text(cart_prod_name,style: TextStyle(fontWeight: FontWeight.bold),),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                Padding(padding: const EdgeInsets.all(8.0),
                child: new Text("Size :"),),
                Padding(padding: const EdgeInsets.all(2.0),
                  child: new Text(cart_prod_size,style: TextStyle(fontWeight: FontWeight.bold),),),
                Padding(padding: const EdgeInsets.fromLTRB(25.0, 8.0, 8.0, 8.0),
                child: new Text("Color :"),),
                Padding(padding: const EdgeInsets.all(2.0),
                  child: new Text(cart_prod_color,style: TextStyle(fontWeight: FontWeight.bold),),),
                ],
            ),
            new Container(
              alignment: Alignment.topLeft,
              child: new Text("\$${cart_prod_price}",
                style: TextStyle(color: Colors.red,
                fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        ),
    );
  }
}

