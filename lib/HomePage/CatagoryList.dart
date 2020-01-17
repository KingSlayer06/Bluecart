import 'package:flutter/material.dart';

class CatagoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Catagories(image: "images/Catagories/Coat.png", text: "Coat"),
          Catagories(image: "images/Catagories/Frock.png", text: "Frock"),
          Catagories(image: "images/Catagories/Sweaters.png", text: "Sweaters"),
          Catagories(image: "images/Catagories/tie.png", text: "Tie"),
          Catagories(image: "images/Catagories/Hats.png", text: "Hat"),
          Catagories(image: "images/Catagories/bag.png", text: "Purse"),
          Catagories(image: "images/Catagories/shoe.png", text: "Shoes"),
          Catagories(image: "images/Catagories/Ladies_shoe.png", text: "Heals"),
          Catagories(image: "images/Catagories/socks.png", text: "Socks"),
        ],
      ),
    );
  }
}

class Catagories extends StatelessWidget {
  final String text;
  final String image;

  Catagories({this.text, this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 100.0,
        child: ListTile(
          title: Image.asset(
            image,
            width: 100.0,
            height: 80.0,
          ),
          subtitle: Text(
            text,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
