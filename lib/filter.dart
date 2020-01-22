import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  RangeValues sliderVal = RangeValues(0, 10);
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
        child: Column(
          children: <Widget>[
            RangeSlider(
              values: sliderVal,
              onChanged: (RangeValues newVal) {
                print("newVal $newVal");
                setState(() {
                  sliderVal = newVal;
                });
              },
              max: 100,
              min: 0,
              labels: RangeLabels('${sliderVal.start}', '${sliderVal.end}'),
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
