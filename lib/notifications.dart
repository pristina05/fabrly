import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NOTIFICATIONS'),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Card(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          child: Image.asset('assets/accessories.jpeg'),
                        ),
                        Padding(padding: const EdgeInsets.all(10)),
                        Text(
                          'Wohlig has accepted your request',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
             Card(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          child: Image.asset('assets/accessories.jpeg'),
                        ),
                        Padding(padding: const EdgeInsets.all(10)),
                        Text(
                          'Wohlig has accepted your request',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
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
