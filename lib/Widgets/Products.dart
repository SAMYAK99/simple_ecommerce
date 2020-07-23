import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simpleecommerce/Models/ProductModel.dart';

import 'ProductItem.dart';

class ProductWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ProductData = Provider.of<Products>(context);
    final pdts = ProductData.items;

    return GridView.builder(
      physics: ScrollPhysics(),
      itemCount: pdts.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
          value: pdts[i],
          child: PdtItem(
            name: pdts[i].name,
            imageUrl: pdts[i].imgUrl,
          )),
    );
  }
}
