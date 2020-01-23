
import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  RangeValues values = RangeValues(1, 5000);
  RangeLabels labels = RangeLabels('1', '5000');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Filter',
        ),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () => {
              Navigator.pop(context),
            },
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(5),
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Range:',
              style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20,) ,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: RangeSlider(
                max: 5000,
                min: 1,
                values: values,
                divisions: 10,
                labels: labels,
                onChanged: (value) {
                  print("newVal $value.start");
                  setState(() {
                    values = value;
                    labels = RangeLabels(value.start.toInt().toString(),
                        value.end.toInt().toString());
                  });
                },
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: RaisedButton(
                        onPressed: () {},
                        child: const Text('Clear All',
                            style: TextStyle(fontSize: 20)),
                        color: Colors.grey,
                        textColor: Colors.white,
                        elevation: 5,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: RaisedButton(
                        padding: const EdgeInsets.only(left: 90, right: 90),
                        onPressed: () {},
                        child:
                            const Text('Apply', style: TextStyle(fontSize: 20)),
                        color: Colors.blueAccent,
                        textColor: Colors.white,
                        elevation: 5,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
