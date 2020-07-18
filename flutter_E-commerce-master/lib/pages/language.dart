import 'package:fashkart/main.dart';
import 'package:flutter/material.dart';


class Language extends StatefulWidget {
  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  bool showSpinner = false;

  bool _isCheaked1 = false;
  void onChanged1(bool value1){
    setState(() {
      _isCheaked1 = value1;
    });
  }
  bool _isCheaked2 = false;
  void onChanged2(bool value2){
    setState(() {
      _isCheaked2 = value2;
    });
  }
  bool _isCheaked3 = false;
  void onChanged3(bool value3){
    setState(() {
      _isCheaked3 = value3;
    });
  }
  bool _isCheaked4 = false;
  void onChanged4(bool value4){
    setState(() {
      _isCheaked4 = value4;
    });
  }
  bool _isCheaked5 = false;
  void onChanged5(bool value5){
    setState(() {
      _isCheaked5 = value5;
    });
  }
  bool _isCheaked6 = false;
  void onChanged6(bool value6){
    setState(() {
      _isCheaked6 = value6;
    });
  }
  bool _isCheaked7 = false;
  void onChanged7(bool value7){
    setState(() {
      _isCheaked7 = value7;
    });
  }
  bool _isCheaked8 = false;
  void onChanged8(bool value8){
    setState(() {
      _isCheaked8 = value8;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text("Lanuages",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.home), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => new HomePage()));
          }),
        ],
      ),
      body: Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              MaterialButton(
                color: Colors.white70,
                onPressed: (){},
                child: Text("English",style: TextStyle(color: Colors.black),),
              ),
              SizedBox(
                width: 20.0,
              ),
              new Checkbox(value: _isCheaked1, onChanged: (bool value1){onChanged1(value1);}),
            ],
          ),
          new Row(
            children: <Widget>[
              MaterialButton(
                color: Colors.white70,
                onPressed: (){},
                child: Text("हिन्दी",style: TextStyle(color: Colors.black),),
              ),
              SizedBox(
                width: 20.0,
              ),
              new Checkbox(
                  value: _isCheaked2, onChanged: (bool value2){onChanged2(value2);}),
            ],
          ),
          new Row(
            children: <Widget>[
              MaterialButton(
                color: Colors.white70,
                onPressed: (){},
                child: Text("Bengali",style: TextStyle(color: Colors.black),),
              ),
              SizedBox(
                width: 20.0,
              ),
              new Checkbox(value: _isCheaked3, onChanged: (bool value3){onChanged3(value3);}),
            ],
          ),
          new Row(
            children: <Widget>[
              MaterialButton(
                color: Colors.white70,
                onPressed: (){},
                child: Text("Punjabi",style: TextStyle(color: Colors.black),),
              ),
              SizedBox(
                width: 20.0,
              ),
              new Checkbox(value: _isCheaked4, onChanged: (bool value4){onChanged4(value4);}),
            ],
          ),
          new Row(
            children: <Widget>[
              MaterialButton(
                color: Colors.white70,
                onPressed: (){},
                child: Text("Urdu",style: TextStyle(color: Colors.black),),
              ),
              SizedBox(
                width: 20.0,
              ),
              new Checkbox(value: _isCheaked5, onChanged: (bool value5){onChanged5(value5);}),
            ],
          ),
          new Row(
            children: <Widget>[
              MaterialButton(
                color: Colors.white70,
                onPressed: (){},
                child: Text("Gujarati",style: TextStyle(color: Colors.black),),
              ),
              SizedBox(
                width: 20.0,
              ),
              new Checkbox(value: _isCheaked6, onChanged: (bool value6){onChanged6(value6);}),
            ],
          ),
          new Row(
            children: <Widget>[
              MaterialButton(
                color: Colors.white70,
                onPressed: (){},
                child: Text("Tamil",style: TextStyle(color: Colors.black),),
              ),
              SizedBox(
                width: 20.0,
              ),
              new Checkbox(value: _isCheaked7, onChanged: (bool value7){onChanged7(value7);}),
            ],
          ),
          new Row(
            children: <Widget>[
              MaterialButton(
                color: Colors.white70,
                onPressed: (){},
                child: Text("Telugu",style: TextStyle(color: Colors.black),),
              ),
              SizedBox(
                width: 20.0,
              ),
              new Checkbox(value: _isCheaked8, onChanged: (bool value8){onChanged8(value8);}),
            ],
          ),
          new Padding(
            padding: const EdgeInsets.only(
                top: 20.0),
          ),
          new MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            onPressed: (){
              setState(() {
                showSpinner = true;
              });
              Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));
            },
            color: Colors.blueGrey[900],
            textColor: Colors.white,
            child: new Text("Done"),
          ),
        ],
      ),
    );
  }
}
