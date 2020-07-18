import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fashkart/main.dart';
import 'package:flutter/services.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class New extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new LoginPage(),
        theme: new ThemeData(
          primaryColor: Colors.green[1300],

        )
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin {
  bool _isCheaked = false;
  void onChanged(bool value){
    setState(() {
      _isCheaked = value;
    });
  }



  bool showSpinner = false;

  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;


  @override
  void initState(){
    super.initState();
    _iconAnimationController = new AnimationController(vsync: this,
        duration: new Duration(milliseconds: 500)
    );
    _iconAnimation = new CurvedAnimation(parent: _iconAnimationController, curve: Curves.easeOut);
    _iconAnimation.addListener(() => this.setState((){}));
    _iconAnimationController.forward();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blueGrey[900],
      ),
      backgroundColor: Colors.blueGrey[900],
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child:  new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                child: Text("Fashkart",style: TextStyle(color: Colors.red,fontSize: 40.0,fontWeight: FontWeight.bold),),
              ),
              new Container(
                child: Text("A  Fashion  Hub",style: TextStyle(color: Colors.white),),
              ),

              SizedBox(
                height:50.0,
              ),
              new Form(
                child: Column(
                    children: <Widget>[
                      new Container(
                        child: TextFormField(
                          showCursor: true,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(8),
                          ],
                          decoration: InputDecoration(
                            labelText: 'Enter Email',
                            focusColor: Colors.blueAccent,
                          ),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.emailAddress,
                        ),
                        padding: EdgeInsets.all(25),
                      ),
                      new Container(
                        child: new TextFormField(
                          showCursor: true,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(8),
                          ],
                            decoration: InputDecoration(
                              labelText: 'Enter Password',
                              focusColor: Colors.blueAccent,
                          ),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                        ),
                        padding: EdgeInsets.all(25),
                      ),

                      new Row(
                        children: <Widget>[
                          SizedBox(width: 20.0),
                          new Checkbox(
                              value: _isCheaked, onChanged: (bool value){onChanged(value);}),
                          new Container(
                            decoration: BoxDecoration(
                            ),
                            child: Text("Apply terms and Condition(T&C)",style: TextStyle(color: Colors.white),),
                          ),
                        ],
                      ) ,

                      new Padding(
                        padding: const EdgeInsets.only(
                            top: 20.0),
                      ),
                         new MaterialButton(
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(25.0),
                           ),
                           onPressed: (){
                             setState(() {
                               showSpinner = true;
                             });
                             Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));
                           },
                           color: Colors.green[900],
                           textColor: Colors.white,
                           child: new Text("LogIn"),
                         ),
                    ],
                  ),
                ),
             ],
          ),
            ],
          ),
      ),
    );
  }
}
