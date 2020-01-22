import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: buildSwiper(),
      ),
    );
  }
}

Widget buildSwiper() {
  List<String> imgs = [
    'assets/accessories.jpeg ,',
    'assets/accessories.jpeg',
    'assets/accessories.jpeg',
    'assets/accessories.jpeg',
    // 'assets/cars.jpg',
    // 'assets/cars.jpg',
  ];

  return Swiper(
// outer: false,
    itemBuilder: (context, i) {
      return Image.asset(imgs[i]);
    },
    autoplay: true,
    duration: 300,
    pagination: SwiperPagination(margin: EdgeInsets.all(5.0)),
    itemCount: imgs.length,
  );
}
