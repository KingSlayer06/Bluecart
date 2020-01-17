import 'package:flutter/material.dart';

import 'package:bluecart/HomePage/CarouselImageView.dart';
import 'package:bluecart/HomePage/DrawerMenu.dart';
import 'package:bluecart/HomePage/CatagoryList.dart';
import 'package:bluecart/HomePage/RecentProducts.dart';
import 'package:bluecart/ShoppingCart/ShoppingCart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //AppBar begains here
      appBar: new AppBar(
        title: new Text("BlueCart"),
        elevation: 7.0,
        backgroundColor: Theme.of(context).primaryColor,
        actions: <Widget>[
          //Search Button
          new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          //Shopping Cart Button
          new IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ShoppingCart()));
            },
          ),
        ],
      ),
      //Menu Drawer
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            //Account Info
            UserAccountsDrawerHeader(
              accountName: Text("Himanshu Sherkar"),
              accountEmail: Text("sherkarhimanshu00@gmail.com"),
              //Profile Picture
              currentAccountPicture: CircleAvatar(
                foregroundColor: Colors.grey,
                child: new Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 50.0,
                ),
              ),
            ),
            //Home Page
            new DrawerMenu(
              text: "Home Page",
              icon: Icons.home,
              color: Theme.of(context).primaryColor,
            ),
            //My Account
            new DrawerMenu(
                text: "My Account",
                icon: Icons.person,
                color: Theme.of(context).primaryColor),
            //My Orders
            new DrawerMenu(
                text: "My Orders",
                icon: Icons.shopping_basket,
                color: Theme.of(context).primaryColor),
            //Categories
            new DrawerMenu(
                text: "Categories",
                icon: Icons.dashboard,
                color: Theme.of(context).primaryColor),
            //Favourates
            new DrawerMenu(
                text: "Favourates",
                icon: Icons.favorite,
                color: Theme.of(context).primaryColor),
            Divider(),
            //Settings
            new DrawerMenu(
              text: "Settings",
              icon: Icons.settings,
            ),
            //help
            new DrawerMenu(
              text: "Help",
              icon: Icons.help_outline,
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          //CaCarousel Image Scrolling View
          new CarouselImageView(),
          //catagory
          new Padding(
            padding: const EdgeInsets.all(6.0),
            child: new Text(
              "Catagory",
              style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87),
            ),
          ),
          new CatagoryList(),
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: new Text(
              "Recent Products",
              style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87),
            ),
          ),
          new RecentProducts(),
        ],
      ),
    );
  }
}
