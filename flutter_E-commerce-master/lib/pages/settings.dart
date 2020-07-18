import 'package:flutter/material.dart';
import 'package:fashkart/main.dart';
import 'package:fashkart/components/setting_components.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text("Settings",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.more_vert), onPressed: () {},
            ),
            ],
      ),
      body: Setting_components(),
      );
  }
}
