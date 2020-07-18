import 'package:flutter/material.dart';
import 'package:fashkart/pages/notification_pg.dart';

class Notification_comp extends StatefulWidget {
  @override
  _Notification_compState createState() => _Notification_compState();
}

class _Notification_compState extends State<Notification_comp> {
  var Notification_list = [

    {
      "name": "Notification: ",
      "notify": "you get  40% off on Nacked Jeans and extra 10% discount on payment by HDFC BANK Credit Card.",
    },
    {
      "name": "Notification: ",
      "notify": "your order is placed and order will be delivered on date 12 jan. 2020.",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Notification_list.length,
        itemBuilder: (context,index){
          return Single_notification(
            notification_app: Notification_list[index]["notify"],
            notification_name: Notification_list[index]["name"],

          );
        });
  }
}
class Single_notification extends StatelessWidget {
  final notification_app;
  final notification_name;

  Single_notification({
    this.notification_app,
    this.notification_name,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: (){},
        title: new Text(notification_name,style: TextStyle(fontWeight: FontWeight.bold),),
        subtitle: Column(
          children: <Widget>[
            Padding(padding: const EdgeInsets.all(8.0),),
            Padding(padding: const EdgeInsets.all(2.0),
              child: new Text(notification_app,style: TextStyle(fontWeight: FontWeight.bold),),),
          ],
        ),
      ),
    );
  }
}
