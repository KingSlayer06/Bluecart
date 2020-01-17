import 'package:flutter/material.dart';

import 'package:bluecart/ShoppingCart/CartProducts.dart';
import 'package:bluecart/ShoppingCart/CartItems.dart';

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  int totalPrice = 0;

  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Shopping Cart"),
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
        ],
      ),

      body: new CartProducts(),
      //bottom nevigation bar
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(left: 10.0),),
            Expanded(
              child: ListTile(
                title: new Text("Total:", style: TextStyle(fontSize: 20.0),),
                subtitle: new Text("\$" + totalPrice.toString(), style: TextStyle(fontSize: 15.0),),
              ),
            ),
            Expanded(
              child: MaterialButton(
                height: 50.0,
                onPressed: () {},
                color: Colors.orange,
                child: new Text("Place Order", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0)),
              ),
            ),
            new Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0)),
          ],
        ),
      ),
    );
  }
}
