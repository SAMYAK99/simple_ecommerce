import 'package:flutter/material.dart';
import 'package:simpleecommerce/Models/ProductModel.dart';
import 'package:simpleecommerce/Widgets/Category.dart';
import 'package:simpleecommerce/Widgets/Products.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Text('Ecommerce App'),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  'Categories',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                ),
                SizedBox(
                  height: 10,
                ),
                Category(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Products',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                ),
                Container(height: 500, child: ProductWidget())
              ],
            ),
          ),
        ));
  }
}
