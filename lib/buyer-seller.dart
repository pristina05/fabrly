import 'package:flutter/material.dart';

class BuyerSeller extends StatefulWidget {
  @override
  _BuyerSellerState createState() => _BuyerSellerState();
}

class _BuyerSellerState extends State<BuyerSeller> {
  bool isChecked = false;

  var resultHolder;

  void toggleCheckbox(bool value) {
    if (isChecked == false) {
      // Put your code here which you want to execute on CheckBox Checked event.
      setState(() {
        isChecked = true;
        resultHolder = 'Checkbox is CHECKED';
      });
    } else {
      // Put your code here which you want to execute on CheckBox Un-Checked event.
      setState(() {
        isChecked = false;
        resultHolder = '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fabrly'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Image.asset(
              'assets/fabrly.jpg',
              height: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
          ),
          Row(
            children: <Widget>[
              Transform.scale(
                scale: 1,
                child: Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    toggleCheckbox(value);
                  },
                  activeColor: Colors.pink,
                  checkColor: Colors.white,
                  tristate: false,
                ),
              ),
              Text(
                'Seller',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 30, right: 30),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text(
                'SIGN IN',
                style: new TextStyle(color: Colors.white),
              ),
            ),
            decoration: new BoxDecoration(
              color: Colors.red,
            ),
            alignment: Alignment(0.0, -1.0),
          ),
          Row(
            children: <Widget>[
              Transform.scale(
                scale: 1,
                child: Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    toggleCheckbox(value);
                  },
                  activeColor: Colors.pink,
                  checkColor: Colors.white,
                  tristate: false,
                ),
              ),
              Text(
                'Buyer',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Column(children: [
            Text(
              '$resultHolder',
              style: TextStyle(fontSize: 22),
            )
          ]),
          Container(
            child: Center(
              child: RaisedButton(
                padding: const EdgeInsets.only(
                    top: 15, bottom: 15, left: 45, right: 45),
                color: Colors.redAccent,
                onPressed: () {
                  // Navigator.pop(context);
                },
                child: Text(
                  'NEXT',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
