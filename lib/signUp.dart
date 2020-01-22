import 'package:fabrly/buyerInformation.dart';
import 'package:fabrly/signIn.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _formValidate = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Fabrly"),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Container(
                child: Center(
                  child: Text(
                    'Create an Account',
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(15, 30, 15, 0),
              child: Form(
                key: _formKey,
                autovalidate: _formValidate,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "UserName",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value.isEmpty || value == null) {
                              return ('Please enter your User Name');
                            }
                          },
                          initialValue: '',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Mobile Number",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return ('Please enter your Mobile Number');
                            }
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Password",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return ('Please enter your Password');
                            }
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Confirm Password",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return ('Please enter your Confirm Password');
                            }
                          },
                        ),
                      ],
                    )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      // Bottom Navigation Bar
      bottomNavigationBar: Container(
        child: RaisedButton(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            color: Colors.redAccent,
            onPressed: () {
              setState(() {
                _formValidate = true;
              });
              if (_formKey.currentState.validate()) {
                // Process data.
                Navigator.pushNamed(context, '/buyerinfo');
              }
            },
            child: Text(
              'CONTINUE',
              style: TextStyle(color: Colors.white, fontSize: 16),
            )),
      ),
    );
  }
}
