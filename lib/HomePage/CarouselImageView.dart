import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class CarouselImageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: new Carousel(
        images: [
          AssetImage("images/Fashion/image1.jpg"),
          AssetImage("images/Fashion/image2.jpg"),
          AssetImage("images/Fashion/image3.jpg"),
          AssetImage("images/Fashion/image4.jpg"),
          AssetImage("images/Fashion/image5.jpg"),
          AssetImage("images/Fashion/image6.jpg"),
        ],
        boxFit: BoxFit.cover,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        autoplay: true,
        dotSize: 6.0,
        indicatorBgPadding: 10.0,
      ),
    );
  }
}
