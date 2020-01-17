import 'package:flutter/material.dart';
import 'package:bluecart/ProductDetails/ProductDetails.dart';

class RecentProducts extends StatefulWidget {
  @override
  _RecentProductsState createState() => _RecentProductsState();
}

class _RecentProductsState extends State<RecentProducts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 270.0,
      child: new GridView.builder(
          itemCount: productList.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            Product product = productList[index];
            return ProductListTile(
              name: product.name,
              image: product.image,
              price: product.price,
            );
          }),
    );
  }
}

class ProductListTile extends StatelessWidget {
  final String name;
  final String image;
  final String price;

  ProductListTile({this.name, this.image, this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(
              new MaterialPageRoute(
                builder: (context) => new ProductDetails(
                  name: this.name,
                  image: this.image,
                  price: this.price,
                ),
              ),
            ),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Text("\$" + price),
                ),
              ),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//Product List
List<Product> productList = [
  Product(
      name: "Mens Blazer",
      image: "images/Products/blazer1.jpeg",
      price: "51/-"),
  Product(
      name: "Wemens Blazer",
      image: "images/Products/blazer2.jpeg",
      price: "49/-"),
  Product(
      name: "Red Gown", image: "images/Products/dress1.jpeg", price: "32/-"),
  Product(
      name: "Black Frock", image: "images/Products/dress2.jpeg", price: "25/-"),
  Product(
      name: "Brown Heals", image: "images/Products/hills1.jpeg", price: "27/-"),
  Product(
      name: "Red Heals", image: "images/Products/hills2.jpeg", price: "29/-"),
  Product(
      name: "Black Lowers", image: "images/Products/pants1.jpg", price: "27/-"),
  Product(
      name: "Grey Lowers", image: "images/Products/pants2.jpeg", price: "25/-"),
  Product(
    name: "Shoes",
    image: "images/Products/shoe1.jpg",
    price: "30/-",
  ),
  Product(
      name: "Blue Skirt", image: "images/Products/skt1.jpeg", price: "31/-"),
  Product(
      name: "Pink Skirt", image: "images/Products/skt2.jpeg", price: "31/-"),
];

class Product {
  final String name;
  final String image;
  final String price;

  Product({this.name, this.image, this.price});
}
