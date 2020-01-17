import 'package:flutter/material.dart';

import 'package:bluecart/ShoppingCart/CartItems.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: cartitems.length,
      itemBuilder: (context, index) {
        return new Product(
          name: cartitems[index].name,
          image: cartitems[index].image,
          price: cartitems[index].price,
          size: cartitems[index].size,
          qty: cartitems[index].qty,
          color: cartitems[index].color,
        );
      },
    );
  }
}

class Product extends StatefulWidget {
  final String name;
  final String image;
  final String price;
  final String size;
  final String qty;
  final String color;

  Product({this.name, this.image, this.price, this.size, this.qty, this.color});

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Image.asset(widget.image, height: 80.0, width: 80.0),
            title: new Text(widget.name),
            subtitle: new Column(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Text("Size:  "),
                    ),
                    new Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Text(widget.size,
                          style:
                              TextStyle(color: Theme.of(context).primaryColor)),
                    ),
                    new Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text("Color:  "),
                    ),
                    new Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Text(widget.color,
                          style:
                              TextStyle(color: Theme.of(context).primaryColor)),
                    ),
                  ],
                ),
                new Container(
                  alignment: Alignment.topLeft,
                  child: new Text(
                    "\$"+widget.price,
                    style: TextStyle(
                        color: Theme.of(context).primaryColor, fontSize: 30.0),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(left: 10.0)),
              //Save for Later
              Expanded(
                child: new MaterialButton(
                  onPressed: () {},
                  child: Row(
                    children: <Widget>[
                      new Icon(
                        Icons.archive,
                        color: Colors.black54,
                      ),
                      new Text(
                        "Save For Later",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ),
              //Remove button
              Expanded(
                child: new MaterialButton(
                  onPressed: () {
                    cartitems.remove(CartItems(
                      name: widget.name,
                      image: widget.image,
                      price: widget.price,
                      size: "M",
                      qty: "1",
                      color: "black",
                    ));
                  },
                  child: Row(
                    children: <Widget>[
                      new Icon(
                        Icons.delete,
                        color: Colors.black54,
                      ),
                      new Text(
                        "Remove",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
