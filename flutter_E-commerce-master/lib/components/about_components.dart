import 'package:fashkart/main.dart';
import 'package:fashkart/pages/Legal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class About_components extends StatefulWidget {
  @override
  _About_componentsState createState() => _About_componentsState();
}

class _About_componentsState extends State<About_components> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 10.0,
        ),
        new InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));
          },
          child: ListTile(
            title: Text("Privacy Policy",style: TextStyle(color: Colors.black,fontSize: 17.0)),
            leading: Icon(Icons.keyboard_arrow_right,color: Colors.black54,),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        new InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> new Legal()));
          },
          child: ListTile(
            title: Text("Terms & Conditions",style: TextStyle(color: Colors.black,fontSize: 17.0)),
            leading: Icon(Icons.keyboard_arrow_right,color: Colors.black54,),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        new InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));
          },
          child: ListTile(
            title: Text("Join the team",style: TextStyle(color: Colors.black,fontSize: 17.0)),
            leading: Icon(Icons.keyboard_arrow_right,color: Colors.black54,),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        new InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));
          },
          child: ListTile(
            leading: Icon(Icons.keyboard_arrow_right,color: Colors.black54,),
            title: Text("Software Licenses",style: TextStyle(color: Colors.blue,fontSize: 17.0)),

          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Divider(
          height: 10.0,
        ),
        new SafeArea(
         child: Column(
           children: <Widget>[
             Container(
               child: Text("-  Contact Us  -",style: TextStyle(color: Colors.black),),
             ),
             SizedBox(
               height: 10.0,
             ),
             Container(
               child: Text("@Ritik Dixit",style: TextStyle(color: Colors.black54),),
             ),
             Container(
               child: Text("@ritikdixit004@gmail.com",style: TextStyle(color: Colors.black54),),
             ),
           ],
         ),
        ),
      ],
    );
  }
}
