import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';
import 'profile.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // elevation: 1.5,
      child: Column(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountEmail: new Text("pristi@gmail.com"),
            accountName: new Text("Pristi"),
            currentAccountPicture: new GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.transparent,
                child: new Image.asset('assets/user.png'),
              ),
              onTap: () => {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => Profile()),
                )
              },
            ),
          ),
          // DrawerHeader(

          //     decoration: BoxDecoration(

          //   color: Colors.redAccent,
          // )),
          Expanded(
              child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              ListTile(
                title: Text('MARKET'),
                leading: new Icon(Icons.search),
                onTap: () {
                Navigator.pushNamed(context, '/market');
                },
              ),
              ListTile(
                title: Text('CART'),
                leading: new Icon(Icons.shopping_cart),
                onTap: () {
                  // Navigator.push(context, new MaterialPageRoute(builder: (context)=>()););
                },
              ),
              ListTile(
                title: Text('NOTIFICATIONS'),
                leading: new Icon(Icons.notifications),
                onTap: () {
                  Navigator.pushNamed(context, '/notifications');
                },
              ),
              ListTile(
                title: Text('CONTACT US'),
                leading: new Icon(Icons.call),
                onTap: () {
                  Navigator.pushNamed(context, '/contactus');
                },
              ),
              ListTile(
                  title: Text('LOGOUT'),
                  leading: Icon(Icons.power_settings_new),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => CupertinoAlertDialog(
                        content: Text("Are you sure you want to LOGOUT",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 17)),
                        actions: [
                          CupertinoDialogAction(
                            child: Text('YES'),
                            onPressed: () => Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => Login()),
                            ),
                          ),
                          CupertinoDialogAction(
                            child: Text('NO'),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                      barrierDismissible: false,
                    );
                  })
            ],
          )),
          Container(
            color: Colors.black,
            width: double.infinity,
            height: 0.1,
          ),
        ],
      ),
    );
  }
}
