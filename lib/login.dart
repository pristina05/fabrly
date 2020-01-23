import 'package:fabrly/forgot.dart';
import 'package:fabrly/market.dart';
import 'package:fabrly/signUp.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String mobile;
  String validateMobile(String value) {
    String patttern = r'/^\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})$/';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Mobile is Required";
    } else if (value.length != 10) {
      return "Mobile number must 10 digits";
    }
    // else if (!regExp.hasMatch(value)) {
    //   return "Mobile Number must be digits";
    // }
    return null;
  }

  String validatePassword(String value) {
    Pattern pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{4,}$';
    RegExp regex = new RegExp(pattern);
    print(value);
    if (value.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(value))
        return 'Enter valid password';
      else
        return null;
    }
  }

  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;
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
            key: _key,
            autovalidate: _validate,
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
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "Mobile Number",
                      border: OutlineInputBorder(),
                    ),
                    validator: validateMobile,
                    onSaved: (String val) {
                      mobile = val;
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(),
                    ),
                    validator: validatePassword,
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
            setState(() {
              _validate = true;
            });
            if (_key.currentState.validate()) {
              // Navigator.pushNamed(context, '/demo1');
              Navigator.pushNamed(context, '/market');
            }
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
