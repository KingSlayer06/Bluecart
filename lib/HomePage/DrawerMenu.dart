import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;

  DrawerMenu({this.text, this.icon, this.color});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        title: Text(
          text,
          style: TextStyle(fontSize: 20.0, color: Colors.grey),
        ),
        leading: Icon(
          icon,
          color: color,
          size: 30.0,
        ),
      ),
    );
  }
}
