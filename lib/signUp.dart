import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;
  String name, email, mobile;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          'Form Validation',
          style: new TextStyle(color: Colors.white),
        ),
      ),
      body: new SingleChildScrollView(
        child: new Container(
          margin: new EdgeInsets.all(15.0),
          child: new Form(
            key: _key,
            autovalidate: _validate,
            child: getFormUI(),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        child: RaisedButton(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            color: Colors.redAccent,
            onPressed: () {
              setState(() {
                _validate = true;
              });
              if (_key.currentState.validate()) {
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

  Widget getFormUI() {
    return new Column(
      children: <Widget>[
        new TextFormField(
          decoration: new InputDecoration(
              hintText: 'Full Name', border: OutlineInputBorder()),
          maxLength: 32,
          validator: validateName,
          onSaved: (String val) {
            name = val;
          },
        ),
        new SizedBox(height: 10.0),
        new TextFormField(
          decoration: new InputDecoration(
              hintText: 'Mobile Number', border: OutlineInputBorder()),
          keyboardType: TextInputType.phone,
          maxLength: 10,
          validator: validateMobile,
          onSaved: (String val) {
            mobile = val;
          },
        ),
        new SizedBox(height: 10.0),
        new TextFormField(
          decoration: new InputDecoration(
              hintText: 'Email ID', border: OutlineInputBorder()),
          keyboardType: TextInputType.emailAddress,
          maxLength: 32,
          validator: validateEmail,
          onSaved: (String val) {
            email = val;
          },
        ),
        new SizedBox(height: 10.0),
        new TextFormField(
          obscureText: true,
          decoration: InputDecoration(
              hintText: "Password", border: OutlineInputBorder()),
          validator: validatePassword,
        ),
        new SizedBox(height: 10.0),
        new TextFormField(
           obscureText: true,
          decoration: InputDecoration(
              hintText: "Confirm Password", border: OutlineInputBorder()),
          validator: (value) {
            if (value.isEmpty) {
              return ('Please enter your Password');
            }
          },
        ),
        // new SizedBox(height: 15.0),
        // new RaisedButton(
        //   onPressed: _submit,
        //   child: new Text('Submit'),
        // )
      ],
    );
  }

  String validateName(String value) {
    String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Name is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Name must be a-z and A-Z";
    }
    return null;
  }

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

  String validateEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Email is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Invalid Email";
    } else {
      return null;
    }
  }
  String validatePassword(String value) {
    Pattern pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
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

  // _submit() {
  //   if (_key.currentState.validate()) {
  //     // No any error in validation
  //     _key.currentState.save();
  //   } else {
  //     // validation error
  //     setState(() {
  //       _validate = true;
  //     });
  //   }
  // }
}
