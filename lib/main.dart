import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Product Listing")),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            ProductBox(
                name: "iPhone",
                description: "iPhone is the stylist phone ever",
                price: 100000,
                image:
                    "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-family-select-2021?wid=940&hei=1112&fmt=jpeg&qlt=90&.v=1617135051000"),
            ProductBox(
                name: "Pixel",
                description: "Pixel is the most featureful phone ever",
                price: 80000,
                image:
                    "https://www.powerplanetonline.com/cdnassets/google_pixel_6_5g_128gb_negro_01_l.jpg"),
            ProductBox(
                name: "Dell XPS 15",
                description: "Laptop is most productive development tool",
                price: 200000,
                image:
                    "https://sgp1.digitaloceanspaces.com/itechstore/itechstore/items/01_c0Yq42P.jpg"),
            ProductBox(
                name: "iPad",
                description:
                    "Tablet is the most useful device ever for meeting",
                price: 150000,
                image:
                    "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-2021-hero-landing-wifi?wid=900&hei=1046&fmt=jpeg&qlt=90&.v=1630973863000"),
            ProductBox(
                name: "Pendrive",
                description: "Pendrive is useful storage medium",
                price: 1000,
                image:
                    "https://static-01.daraz.com.np/p/52336f355f53137151266a425b4b079c.jpg"),
          ],
        ));
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.network(image),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          Text("Price: " + this.price.toString()),
                        ],
                      )))
            ])));
  }
}
