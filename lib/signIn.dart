import 'package:fabrly/buyer-seller.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Fabrly"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: <Widget>[
          
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Center(
              child: Text(
                'Sign In',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right:10, left: 10, top: 15 , bottom: 20),
            child: Text(
              'Enter the code you have receieved by SMS in order to verify account',
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
              textAlign: TextAlign.center,
            ),
          ),
          // continue
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                RaisedButton(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    color: Colors.redAccent,
                    onPressed: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(builder: (context) => BuyerSeller()),
                      );
                    },
                    child: Text(
                      'CONTINUE',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
          ),
          // resend otp
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                RaisedButton(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    color: Colors.redAccent,
                    onPressed: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(builder: (context) => SignIn()),
                      );
                    },
                    child: Text(
                      'RESEND OTP',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
