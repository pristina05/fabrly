import 'package:fabrly/login.dart';
import 'package:fabrly/signIn.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Forgot extends StatefulWidget {
  @override
  _ForgotState createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
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
          child: Column(
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
                child: Text(
                  'Please enter the registered mobile number on Fabric Terminal',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    //Add th Hint text here.
                    hintText: "Mobile Number",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
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
                      'CONTINUE',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 40),
                child: Center(
                  child: new RichText(
                    text: new TextSpan(
                      children: [
                        new TextSpan(
                          text: 'Go back to',
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        new TextSpan(
                          text: ' Login',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => Login()),
                              );
                            },
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
