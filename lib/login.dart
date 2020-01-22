import 'package:fabrly/forgot.dart';
import 'package:fabrly/market.dart';
import 'package:fabrly/signUp.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Fabrly"),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 10, right: 10),
          // child:Image.asset('assets/bg.jpg'),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // logo
                Center(
                  child: Image.asset(
                    'assets/fabrly.jpg',
                    height: 200,
                  ),
                ),
                  SizedBox(
                    height: 10,
                  ),
                Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Mobile Number",
                      border: OutlineInputBorder(),
                    ),
                  
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                //Sign up
                Container(
                  margin: const EdgeInsets.only(top: 40),
                  child: Center(
                    child: new RichText(
                      text: new TextSpan(
                        children: [
                          new TextSpan(
                            text: 'Dont\'t have an account?',
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          new TextSpan(
                            text: ' Sign up',
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                            recognizer: new TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(context, '/signup');
                              },
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                // Forgot Password
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Center(
                    child: new RichText(
                      text: new TextSpan(
                        text: 'Forgot Password',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = () {
                          Navigator.pushNamed(context, '/forgot');
                          },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // login
      bottomNavigationBar: Container(
        child: RaisedButton(
          padding: const EdgeInsets.only(top: 15, bottom: 15),
          color: Colors.redAccent,
          onPressed: () {
            // Navigator.push(
            //   context,
            //   new MaterialPageRoute(builder: (context) => Market()),
            // );
            Navigator.pushNamed(context, '/market');
          },
          child: Text(
            'LOGIN',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
