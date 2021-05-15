import 'package:flutter/material.dart';

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
      child: RaisedButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        padding: EdgeInsets.all(12),
        color: Colors.red,
        child: Text(
          'Log In',
          style: TextStyle(color: Colors.white, fontSize: 12.0),
        ),
      ),
    );

    final forgotlabel = TextButton(
      autofocus: true,
      onPressed: () {},
      child: Container(
        child: Text(
          'Esqueceu sua senha?',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
      ),
    );

    final Register = ElevatedButton(
      autofocus: false,
      onPressed: () {},
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
            ],
          ),
        ),
      ),
    );
  }
}
