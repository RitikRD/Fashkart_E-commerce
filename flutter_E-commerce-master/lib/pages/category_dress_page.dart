import 'package:fashkart/components/products.dart';
import 'package:fashkart/pages/category_dress_page.dart';
import 'package:flutter/material.dart';

class Category_page extends StatefulWidget {

  @override
  _Category_pageState createState() => _Category_pageState();
}

class _Category_pageState extends State<Category_page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text("Products",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),
      body: Products(),
    );
  }
}
