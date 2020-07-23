import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simpleecommerce/Widgets/Products.dart';

import 'Models/ProductModel.dart';
import 'Screens/Homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Eommerce',
        theme: ThemeData(
            primaryColor: Colors.lightBlue, accentColor: Colors.white),
        home: HomePage(),
      ),
    );
  }
}
