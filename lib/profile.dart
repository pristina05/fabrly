import 'package:fabrly/forgot.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    void _settingModalBottomSheet(context) {
      showModalBottomSheet(
          context: context,
          builder: (BuildContext bc) {
            return Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(
                        Icons.photo_library,
                        color: Colors.blue,
                      ),
                      title: new Text(
                        'Choose from Gallery',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () => {}),
                  new ListTile(
                    leading: new Icon(
                      Icons.camera_alt,
                      color: Colors.blue,
                    ),
                    title: new Text(
                      'Take from Camera',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () => {},
                  ),
                  Divider(),
                  new ListTile(
                    leading: new Icon(
                      Icons.cancel,
                      color: Colors.blue,
                    ),
                    title: new Text(
                      'Cancel',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () => {Navigator.pop(context)},
                  ),
                ],
              ),
            );
          });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.edit , color: Colors.white,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
            child:  GestureDetector(
              onTap: () {
                _settingModalBottomSheet(context);
              },
              child: Image.asset(
                'assets/useraccount.png',
              ),
            ),
            ),
           
            Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 20, left: 10),
                  child: Text(
                    'PERSONAL INFORMATION',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.blue),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'First Name',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Last Name',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Mobile Number',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Email ID',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Alternate / Dispatch Address',
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
