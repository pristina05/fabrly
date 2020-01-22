import 'package:fabrly/productImages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // title
            Text(
              'BEDSHEETS',
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            // Card Section
            Card(
              // margin: const EdgeInsets.fromLTRB(10, 30, 10, 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/images');
                    },
                    child: Image.asset(
                      'assets/accessories.jpeg',
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        new Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.thumb_up, color: Colors.blue),
                              tooltip: 'Like',
                              // onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=>form()),);}, // null disables the button
                            ),
                            Text(
                              'Like',
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        new Row(
                          children: <Widget>[
                            IconButton(
                              icon:
                                  Icon(Icons.shopping_cart, color: Colors.blue),
                              tooltip: 'Shopping Cart',
                              onPressed: null,
                            ),
                            Text(
                              'Add to Cart',
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        new Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.share, color: Colors.blue),
                              tooltip: 'Share',
                              onPressed: null,
                            ),
                            Text(
                              'Share',
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Rate
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'RATE:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Text('20',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue)),
                    ],
                  ),
                ),
                Divider(
                  height: 2.0,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Width/Size:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Text('-',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue))
                    ],
                  ),
                ),
                Divider(
                  height: 2.0,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Description:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                      ),
                      Text('Product Description',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                ),
                Divider(
                  height: 2.0,
                  color: Colors.grey,
                ),
              ],
            ),

            // Similar Products
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Text(
                'SIMILAR PROCUCTS',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'assets/accessories.jpeg',
                          width: 160,
                        ),
                      ),
                      Text(
                        'A2',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(padding: const EdgeInsets.all(15)),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'assets/accessories.jpeg',
                          width: 160,
                        ),
                      ),
                      Text('A2', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'assets/accessories.jpeg',
                          width: 160,
                        ),
                      ),
                      Text(
                        'A2',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(padding: const EdgeInsets.all(15)),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'assets/accessories.jpeg',
                          width: 160,
                        ),
                      ),
                      Text('A2', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
