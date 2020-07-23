import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryCard(
              Icon(
                Icons.book,
                size: 40,
              ),
              'Book'),
          CategoryCard(
              Icon(
                Icons.computer,
                size: 40,
              ),
              'Laptops'),
          CategoryCard(
              Icon(
                Icons.videogame_asset,
                size: 40,
              ),
              'Games'),
          CategoryCard(
              Icon(
                Icons.videocam,
                size: 40,
              ),
              'Movies'),
          CategoryCard(
              Icon(
                Icons.watch,
                size: 40,
              ),
              'Watches'),
          CategoryCard(
              Icon(
                Icons.weekend,
                size: 40,
              ),
              'Furniture'),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final Icon icon;
  final String name;

  CategoryCard(this.icon, this.name);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(blurRadius: 5, color: Colors.blueGrey)],
        ),
        width: 100,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              icon,
              SizedBox(
                height: 10,
              ),
              Text(name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ),
    );
  }
}
