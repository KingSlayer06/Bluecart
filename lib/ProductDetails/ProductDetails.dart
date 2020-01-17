import 'package:bluecart/HomePage/Homepage.dart';
import 'package:flutter/material.dart';

import 'package:bluecart/HomePage/RecentProducts.dart';
import 'package:bluecart/ShoppingCart/CartItems.dart';
import 'package:bluecart/ShoppingCart/ShoppingCart.dart';

class ProductDetails extends StatefulWidget {
  final String name;
  final String image;
  final String price;

  ProductDetails({this.name, this.image, this.price});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: InkWell(
          child: new Text("BlueCart"),
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => new HomePage())),
        ),
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
                  MaterialPageRoute(builder: (context) => new ShoppingCart()));
            },
          ),
        ],
      ),
      body: new ListView(
        children: <Widget>[
          //Product image
          new Container(
            height: 300.0,
            child: new GridTile(
              child: new Container(
                color: Colors.white,
                child: new Image.asset(
                  widget.image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          //Product name
          new Container(
            // color: Colors.white,
            child: ListTile(
              title: Text(widget.name,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              trailing: Text("\$" + widget.price,
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),

          Row(
            children: <Widget>[
              //Size button
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text("Size"),
                          content: new Text("Select Size"),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () =>
                                  Navigator.of(context).pop(context),
                              child: new Text("Close",
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor)),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      new Text("Size"),
                      new Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                      ),
                      new Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
              ),

              //Quantity button
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text("Quantity"),
                          content: new Text("Select Quantity"),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () =>
                                  Navigator.of(context).pop(context),
                              child: new Text(
                                "Close",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      new Text("Quantity"),
                      new Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                      ),
                      new Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
              ),

              //Color button
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text("Color"),
                          content: new Text("Select Color"),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () =>
                                  Navigator.of(context).pop(context),
                              child: new Text(
                                "Close",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      new Text("Color"),
                      new Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                      ),
                      new Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
              ),
            ],
          ),
          //Buy now button
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0)),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Buy Now"),
                ),
              ),
              //cart button
              new IconButton(
                onPressed: () {
                  if (!cartitems.contains(CartItems(
                      name: widget.name,
                      image: widget.image,
                      price: widget.price))) {
                    cartitems.add(new CartItems(
                      name: widget.name,
                      image: widget.image,
                      price: widget.price,
                      size: "M",
                      qty: "1",
                      color: "black",
                    ));
                    print(CartItems());
                  }
                },
                color: Theme.of(context).primaryColor,
                icon: Icon(Icons.add_shopping_cart),
              ),
              //favourates button
              new IconButton(
                onPressed: () {},
                color: Theme.of(context).primaryColor,
                icon: Icon(Icons.favorite_border),
              ),
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text(
              "Product Details",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            subtitle: new Text(
                "A product description is the marketing copy used to describe a product’s value proposition to potential customers. A compelling product description provides customers with details around features, problems it solves and other benefits to help generate a sale."),
          ),
          Divider(),
          //Similar Products
          new ListTile(
            title: new Text(
              "Similar Products",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          new RecentProducts(),
        ],
      ),
    );
  }
}

class DropdownButton extends StatelessWidget {
  final String name;
  final double padding;

  DropdownButton({this.name, this.padding});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: MaterialButton(
            onPressed: () {},
            color: Colors.white,
            textColor: Colors.grey,
            elevation: 0.2,
            child: Row(
              children: <Widget>[
                new Text(name),
                new Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                ),
                new Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
