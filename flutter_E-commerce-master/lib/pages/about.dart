import 'package:flutter/material.dart';
import 'package:fashkart/main.dart';
import 'package:fashkart/components/about_components.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        backgroundColor: Colors.blueGrey[900],
        title: Text("About",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      actions: <Widget>[
        new IconButton(icon: Icon(Icons.home), onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => new HomePage()));
        }),
      ],
      ),
      body: About_components(),
    );
  }
}
