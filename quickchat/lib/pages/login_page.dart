import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}


class _LoginPageState extends State<LoginPage>{

  late double _devHeight;
  late double _devWidth;

  late GlobalKey<FormState> _formValues;

  _LoginPageState(){
    _formValues = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context){
    _devHeight = MediaQuery.of(context).size.height;
    _devWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Align(
        alignment: Alignment.center,
        child: _loginPageUI(),
      )
    );
  }

  Widget _loginPageUI(){
    return Container(
      alignment: Alignment.center,
      height: _devHeight * .60,
      padding: EdgeInsets.symmetric(horizontal: _devWidth * 0.10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _headingWidget(),
          _credentialForm()
        ],
      ),
    );
  }

  Widget _headingWidget(){
    return Container(height: _devHeight * 0.12,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Hello Talkative Fellow", 
            style: TextStyle(
              color: Color.fromRGBO(226, 220, 220, 1),
              fontSize: 30,
              fontWeight: FontWeight.w500
            )
          ),
          Text(
            "Please login to your account.", 
            style: TextStyle(
              color: Color.fromRGBO(226, 220, 220, 1),
              fontSize: 25,
              fontWeight: FontWeight.w200
              )
          )
        ],
      )
    );
  }

  Widget _credentialForm(){
    return Container(
      height: _devHeight * 0.16,
      key: _formValues,
      
      child: Form(child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _emailTextField(),
          _passwordField()
        ],
      )),
    );
  }

  Widget _emailTextField(){
    return TextFormField(
      autocorrect: false,
      style: TextStyle(
        color: Colors.white
      ),
      validator: (_input) {},
      onSaved: (_input) {},
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintText: "Email Address", 
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }

  Widget _passwordField(){
    return TextFormField(
      autocorrect: false,
      style: TextStyle(
        color: Colors.white
      ),
      validator: (_input) {},
      onSaved: (_input) {},
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintText: "Password", 
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }

}
