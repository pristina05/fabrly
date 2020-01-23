// import 'dart:js';

import 'package:fabrly/forgot.dart';
import 'package:fabrly/productDetails.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';

class CarouselDemo extends StatefulWidget {
  CarouselDemo() : super();

  final String title = "Carousel Demo";

  @override
  CarouselDemoState createState() => CarouselDemoState();
}

class CarouselDemoState extends State<CarouselDemo> {
  //
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1536679545597-c2e5e1946495?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1543922596-b3bbaba80649?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1502943693086-33b5b1cfdf2f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'
  ];

  // List<T> map<T>(List list, Function handler) {
  //   List<T> result = [];
  //   for (var i = 0; i < list.length; i++) {
  //     result.add(handler(i, list[i]));
  //   }
  //   return result;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              carouselSlider = CarouselSlider(
                height: 200.0,
                initialPage: 0,
                enlargeCenterPage: true,
                autoPlay: true,
                reverse: false,
                enableInfiniteScroll: true,
                autoPlayInterval: Duration(seconds: 2),
                autoPlayAnimationDuration: Duration(milliseconds: 3000),
                pauseAutoPlayOnTouch: Duration(seconds: 5),
                scrollDirection: Axis.horizontal,
                onPageChanged: (index) {
                  setState(() {
                    _current = index;
                  });
                },
                items: imgList.map((imgUrl) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          color: Colors.green,
                        ),
                        // child: GestureDetector(
                        child: Image.network(
                          imgUrl,
                          fit: BoxFit.fill,
                        ),
                        // onTap: () {
                        //   Navigator.push<Widget>(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => ProductDetail(),
                        //     ),
                        //   );
                        // }),
                      );
                    },
                  );
                }).toList(),
              ),
              SizedBox(
                height: 20,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: map<Widget>(imgList, (index, url) {
              //     return Container(
              //       width: 10.0,
              //       height: 10.0,
              //       margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              //       decoration: BoxDecoration(
              //         shape: BoxShape.circle,
              //         color: _current == index ? Colors.redAccent : Colors.green,
              //       ),
              //     );
              //   }),
              // ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/details');
                    },
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Image.network(
                              'https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
                             
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'Clothes',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Description',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/details');
                    },
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Image.asset(
                              'assets/user.png',
                              width: 150,
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'Clothes',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Description',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/details');
                    },
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Image.asset(
                              'assets/user.png',
                              width: 150,
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'Clothes',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Description',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),

                  // Card
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/details');
                    },
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Image.asset(
                              'assets/user.png',
                              width: 150,
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'Clothes',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Description',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              )
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     OutlineButton(
              //       onPressed: goToPrevious,
              //       child: Text("<"),
              //     ),
              //     OutlineButton(
              //       onPressed: goToNext,
              //       child: Text(">"),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }

  goToPrevious() {
    carouselSlider.previousPage(
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  goToNext() {
    carouselSlider.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.decelerate);
  }
}
