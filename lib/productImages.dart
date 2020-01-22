import 'package:flutter/material.dart';

class ProductImages extends StatefulWidget {
  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () => {Navigator.pop(context)},
          )
        ],
      ),
      body: Container(
        child: Center(
          child: Image.asset('assets/accessories.jpeg'),
        ),
      ),
    );
  }
}
