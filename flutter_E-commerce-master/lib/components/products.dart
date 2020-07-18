import 'package:flutter/material.dart';
import 'package:fashkart/pages/products_details.dart';


class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  String  productsList;

  var products_list = [
    {
      "name": "Dress :",
      "picture": "images/products/d.jpeg",
      "old_price":1749,
      "price":999,
    },
    {
      "name": "Sports Watch :",
      "picture": "images/products/w1.jpeg",
      "old_price": 999,
      "price": 699,
    },

    {
      "name": "Trouser :",
      "picture": "images/products/f.jpeg",
      "old_price":1749,
      "price":999,
    },
    {
      "name": "Pink Dress",
      "picture": "images/products/d3.jpeg",
      "old_price": 1299,
      "price": 799,
    },
    {
      "name": "Blue Jeans :",
      "picture": "images/products/j.jpg",
      "old_price":1749,
      "price":999,
    },
    {
      "name": "Brown Dress :",
      "picture": "images/products/d2.jpeg",
      "old_price": 699,
      "price": 449,
    },

    {
      "name": "Cheak Shirt :",
      "picture": "images/products/s.jpeg",
      "old_price":1749,
      "price":999,
    },
    {
      "name": "Shoes :",
      "picture": "images/products/sh.jpeg",
      "old_price":1749,
      "price":999,
    },
    {
      "name": "Watch",
      "picture": "images/products/w2.jpeg",
      "old_price": 1099,
      "price": 799,
    },
    ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: products_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
            return Single_prod(
            prod_name: products_list[index]['name'],
            prod_picture: products_list[index]['picture'],
            prod_old_price: products_list[index]['old_price'],
            prod_price: products_list[index]['price'],
          );
    });
  }
  }

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(tag: prod_name, child: Material(
        child: InkWell(onTap: ()=> Navigator.of(context).push(
            new MaterialPageRoute(builder: (context) => new ProductsDetails(
              products_details_name: prod_name,
              products_details_new_price: prod_price,
              products_details_old_price: prod_old_price,
              products_details_picture: prod_picture,
            ))),
        child: GridTile(
          footer: Container(
            height: 25.0,
            color: Colors.white70,
            child: new Row(children: <Widget>[
              Expanded(child: Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
              ),
             new Text("\$${prod_price}",style: TextStyle(color: Colors.blueGrey[900],fontWeight: FontWeight.bold,fontSize: 16.0),),
              new Text("\$${prod_old_price}",style: TextStyle(color: Colors.red, decoration: TextDecoration.lineThrough,fontSize: 12.0),),
            ],
            ),
          ),
            child: Image.asset(prod_picture,
            fit: BoxFit.cover,)),
      ),
      )),
    );
  }
}

