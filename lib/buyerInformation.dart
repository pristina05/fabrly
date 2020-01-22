import 'package:fabrly/market.dart';
import 'package:flutter/material.dart';

class BuyerInfo extends StatefulWidget {
  @override
  _BuyerInfoState createState() => _BuyerInfoState();
}

class _BuyerInfoState extends State<BuyerInfo> {
  String mobile(String mobile) {
    if (mobile.isEmpty || mobile == null) {
      return ('Mobile no required');
    }
  }
    bool _formValidate = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fabrly'),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            autovalidate: true,
            child: Column(
              children: <Widget>[
                Center(
                  child: Text(
                    'Upload Profile Photo',
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                FloatingActionButton(
                  onPressed: () {},
                  tooltip: 'Upload Photo',
                  child: const Icon(Icons.photo_camera),
                ),

                // First Name
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "First Name",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return ('Please enter your First Name');
                      }
                      return null;
                    },
                  ),
                ),
                //Last Name
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Last Name",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return ('Please enter your Last Name');
                      }
                      return null;
                    },
                  ),
                ),
                //Email Id
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Email ID",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return ('Please enter your Email ID');
                      }
                      return null;
                    },
                  ),
                ),
                //Contact Number
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Mobile Number",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return ('Please enter your Contact Number');
                      }
                      return null;
                    },
                  ),
                ),
                //Alternate/Dispatch Address
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: TextFormField(
                    maxLines: 5,
                    validator: (value) {
                      if (value.isEmpty) {
                        return ('Please enter your Alternate /Dispatch Address');
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Alternate /Dispatch Address",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                // Button
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
      // Bottom Navigation Bar
      bottomNavigationBar: Container(
        child: RaisedButton(
          padding: const EdgeInsets.only(top: 15, bottom: 15),
          color: Colors.redAccent,
          onPressed: () {
            setState(() {
              _formValidate=true;
            });
            if (_formKey.currentState.validate()) {
              // Process data.
              Navigator.pushNamed(context, '/market');
            }
          },
          child: Text(
            'CONTINUE',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
