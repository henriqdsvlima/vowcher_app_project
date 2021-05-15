import 'package:flutter/material.dart';

void main() {
  runApp(VowcherLogin());
}

class VowcherLogin extends StatefulWidget {
  @override
  _VowcherLoginState createState() => _VowcherLoginState();
}

class _VowcherLoginState extends State<VowcherLogin> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: Text(
          ' Vowcher',
          style: TextStyle(
            fontSize: 60,
            color: Color(0xffffffff),
            fontWeight: FontWeight.bold,
          ),
        ),
        radius: 48.0,
      ),
    );

    final email = TextFormField(
      cursorColor: Color(0xffff5d53),
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: ' Insira o Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            primary: Colors.transparent,
            side: BorderSide(color: Colors.transparent)),
        child: Text(
          'Log In',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );

    final forgotlabel = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            primary: Colors.transparent,
            side: BorderSide(color: Colors.transparent)),
        child: Text(
          'Forgot your password?',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );

    final register = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            primary: Colors.transparent,
            side: BorderSide(color: Colors.transparent)),
        child: Text(
          'Register',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffff5d53),
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              logo,
              SizedBox(
                height: 48.0,
              ),
              email,
              SizedBox(
                height: 8.0,
              ),
              password,
              SizedBox(
                height: 24.0,
              ),
              loginButton,
              forgotlabel,
              register,
            ],
          ),
        ),
      ),
    );
  }
}
