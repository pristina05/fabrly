import 'package:fabrly/filter.dart';
import 'package:fabrly/login.dart';
import 'package:fabrly/notifications.dart';
import 'package:fabrly/productDetails.dart';
import 'package:fabrly/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Market extends StatefulWidget {
  @override
  _MarketState createState() => _MarketState();
}

class _MarketState extends State<Market> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        // search
        title: TextField(
          style: TextStyle(
            fontSize: 15,
          ),
          decoration: InputDecoration(
            hintText: "Search",
            prefixIcon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ),
        // filter
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.format_align_center, color: Colors.white),
            tooltip: 'Filter',
            onPressed: () => Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => Filter()),
            ),
          ),
        ],
      ),
      // Side navmenu
      drawer: Drawer(
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
                    // Navigator.push(context, new MaterialPageRoute(builder: (context)=>()););
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
      ),
      body: Container(
        // gridview
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/details');
                    },
                    child: Image.asset(
                      'assets/accessories.jpeg',
                      height: 140,
                    ),
                  ),
                  Text(
                    'BEDSHEETS',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              child: Card(
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/details');
                      },
                      child: Image.asset(
                        'assets/accessories.jpeg',
                        height: 140,
                      ),
                    ),
                    Text('All', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
