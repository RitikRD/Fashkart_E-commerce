import 'package:fashkart/pages/buy.dart';
import 'package:fashkart/pages/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fashkart/main.dart';



class ProductsDetails extends StatefulWidget {

  final products_details_name;
  final products_details_new_price;

  final products_details_old_price;
  final products_details_picture;

  ProductsDetails({
    this.products_details_name,
    this.products_details_new_price,
    this.products_details_old_price,
    this.products_details_picture,
});

  @override
  _ProductsDetailState createState() => _ProductsDetailState();
}

class _ProductsDetailState extends State<ProductsDetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blueGrey[900],
        title: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>new HomePage()));
            },
            child: Text('Fashkart'),),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
            },
            icon: Icon(
              Icons.add_shopping_cart,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: new ListView(
       children: <Widget>[
         new Container(
           height: 250.0,
           child: GridTile(child: Container(
             color: Colors.white,
              child: Image.asset(widget.products_details_picture),
           ),
             footer: new Container(
               color: Colors.white70,
               child: ListTile(
                 leading: new Text(widget.products_details_name,
                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                 title: new Row(
                   children: <Widget>[
                     Expanded(
                       child: new Text("\$${widget.products_details_new_price}",
                         style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey[900], fontSize: 17.0),),
                     ),
                     Expanded(
                         child: new Text("\$${widget.products_details_old_price}",
                           style: TextStyle(color: Colors.red, decoration: TextDecoration.lineThrough,fontSize: 13.0),)
                     ),
                   ],
                 ),
               ),
             ),
           ),
         ),
         new Row(
           children: <Widget>[
             Expanded(
               child: MaterialButton(
                 onPressed: (){
                   showDialog(context: context,

                       builder: (context){
                         return new AlertDialog(
                           title: new Text("Size: "),
                           content: new Row(
                             children: <Widget>[
                               InkWell(
                                 onTap: (){},
                                 child: Text("S ",style: TextStyle(color: Colors.black),),
                               ),
                               SizedBox(width: 18.0,),
                               InkWell(
                                 onTap: (){},
                                 child: Text("M",style: TextStyle(color: Colors.black),),
                               ),
                               SizedBox(width: 18.0,),
                               InkWell(
                                 onTap: (){},
                                 child: Text("L",style: TextStyle(color: Colors.black),),
                               ),
                               SizedBox(width: 18.0,),
                               InkWell(
                                 onTap: (){},
                                 child: Text("XL",style: TextStyle(color: Colors.black),),
                               ),
                               SizedBox(width: 18.0,),
                               InkWell(
                                 onTap: (){},
                                 child: Text("XXL",style: TextStyle(color: Colors.black),),
                               ),
                               SizedBox(width: 18.0,),
                               InkWell(
                                 onTap: (){},
                                 child: Text("XXL",style: TextStyle(color: Colors.black),),
                               ),
                               SizedBox(width: 18.0,),
                             ],
                           ),
                           actions: <Widget>[
                             new MaterialButton(onPressed: (){
                               Navigator.of(context).pop(context);
                             },
                               child: new Text("OK"),
                               color: Colors.black,),
                           ],
                         );
                       });
                 },
                 color: Colors.white,
                 textColor: Colors.black,
                 elevation: 0.2,
                 child: Row(
                   children: <Widget>[
                     Expanded(child: new Text("Size.")),
                     Expanded(child: new Icon(Icons.arrow_drop_down)),
                   ],
                 ),
               ),
             ),
             Expanded(
               child: MaterialButton(
                 onPressed: (){
                   showDialog(context: context,
                       builder: (context){
                         return new AlertDialog(
                           title: new Text("Colors : "),
                           content: new Row(
                             children: <Widget>[
                               InkWell(
                                 onTap: (){},
                                 child: Text("Blue",style: TextStyle(color: Colors.blue),),
                               ),
                               SizedBox(width: 12.0),
                               InkWell(
                                 onTap: (){},
                                 child: Text("Black",style: TextStyle(color: Colors.black),),
                               ),
                               SizedBox(width: 12.0),
                               InkWell(
                                 onTap: (){},
                                 child: Text("Red",style: TextStyle(color: Colors.red),),
                               ),
                               SizedBox(width: 12.0),
                               InkWell(
                                 onTap: (){},
                                 child: Text("Yellow",style: TextStyle(color: Colors.yellow),),
                               ),
                               SizedBox(width: 12.0),
                               InkWell(
                                 onTap: (){},
                                 child: Text("Grey",style: TextStyle(color: Colors.grey),),
                               ),
                             ],
                           ),
                           actions: <Widget>[
                             new MaterialButton(onPressed: (){
                               Navigator.of(context).pop(context);
                             },
                               child: new Text("OK"),
                               color: Colors.black,),
                           ],
                         );
                       });
                 },
                 color: Colors.white,
                 textColor: Colors.black,
                 elevation: 0.2,
                 child: Row(
                   children: <Widget>[
                     Expanded(child: new Text("Color.")),
                     Expanded(child: new Icon(Icons.arrow_drop_down)),
                   ],
                 ),
               ),
             ),
             Expanded(
               child: MaterialButton(
                 onPressed: (){
                   showDialog(context: context,
                       builder: (context){
                         return new AlertDialog(
                           title: new Text("Qty: "),
                           content: new Row(
                             children: <Widget>[
                               new InkWell(
                                 onTap: (){},
                                 child: Text("1"),
                               ),
                               SizedBox(width: 17.0),
                               new InkWell(
                                 onTap: (){},
                                 child: Text("2"),
                               ),
                               SizedBox(width: 17.0),
                               new InkWell(
                                 onTap: (){},
                                 child: Text("3"),
                               ),
                               SizedBox(width: 17.0),
                               new InkWell(
                                 onTap: (){},
                                 child: Text("4"),
                               ),
                               SizedBox(width: 17.0),
                               new InkWell(
                                 onTap: (){},
                                 child: Text("5"),
                               ),
                               SizedBox(width: 17.0),
                               new InkWell(
                                 onTap: (){},
                                 child: Text("6"),
                               ),
                               SizedBox(width: 17.0),
                               new InkWell(
                                 onTap: (){},
                                 child: Text("7"),
                               ),
                               SizedBox(width: 17.0),new InkWell(
                                 onTap: (){},
                                 child: Text("8"),
                               ),
                             ],
                           ),
                           actions: <Widget>[
                             new MaterialButton(onPressed: (){
                               Navigator.of(context).pop(context);
                             },
                               child: new Text("OK"),
                               color: Colors.black,),
                           ],
                         );
                       });
                 },
                 color: Colors.white,
                 textColor: Colors.black,
                 elevation: 0.2,
                 child: Row(
                   children: <Widget>[
                     Expanded(child: new Text("Qty.")),
                     Expanded(child: new Icon(Icons.arrow_drop_down)),
                   ],
                 ),
               ),
             ),
                ],
              ),
         SizedBox(
           height: 10.0,
         ),
         new Row(
           children: <Widget>[
             new Padding(
               padding: const EdgeInsets.only(
                   top: 20.0),
             ),
             SizedBox(
               width: 20.0,
             ),
             new MaterialButton(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10.0),
               ),
               onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> new Buy_now()));
               },
               color: Colors.blueGrey[900],
               textColor: Colors.white,
               child: new Text("    Buy Now    "),
             ),
             SizedBox(
               width: 120.0,
             ),
                new IconButton(
                    icon: Icon(
                      Icons.add_shopping_cart,
                      color: Colors.blueGrey[900],
                      size: 25.0,), onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
                },),
                new IconButton(
                    icon: Icon(
                      Icons.favorite_border,size: 25.0,color: Colors.red,), onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Cart()));
                }),
                ],
              ),

         SizedBox(
           height: 10.0,
         ),
         new Container(
           child: Text(" Available Offer's"),
           color: Colors.grey[300],
         ),

         new Container(
           child: ListTile(
             onTap: (){},
             title: Text('Bank offer 10% Instant Discount on ICICI Bank Credit Card.'),
             subtitle: Text('T&C apply'),
             leading: Icon(Icons.local_offer,color: Colors.blueGrey[900],),
           ),
         ),
         new Container(
           child: ListTile(
             onTap: (){},
             title: Text('Bank offer 10% Instant Cashback on HDFC Bank Credit Card.'),
             subtitle: Text('T&C apply'),
             leading: Icon(Icons.local_offer,color: Colors.blueGrey[900],),
           ),
         ),
         new Container(
           child: ListTile(
             onTap: (){},
             title: Text('Bank offer 5% Unlimited Cashback on Fashkart Axis Bank Credit Card.'),
             subtitle: Text('T&C apply'),
             leading: Icon(Icons.local_offer,color: Colors.blueGrey[900],),
           ),
         ),
        Divider(),

        new Container(
          child: Text(" Similar Products"),
          color: Colors.grey[300],
        ),
         SizedBox(
           height: 10.0,
         ),
        new Container(height: 400,
        child: Similar_products(),
        ),
       ],
         ),
      );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var products_list = [
    {
      "name": "Dress :",
      "picture": "images/products/d.jpeg",
      "old_price":1749,
      "price":999,
    },
    {
      "name": "Trouser :",
      "picture": "images/products/f.jpeg",
      "old_price":1749,
      "price":999,
    },
    {
      "name": "Watch",
      "picture": "images/products/w2.jpeg",
      "old_price": 1099,
      "price": 799,
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
      "name": "Watch :",
      "picture": "images/products/w1.jpeg",
      "old_price": 999,
      "price": 699,
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
