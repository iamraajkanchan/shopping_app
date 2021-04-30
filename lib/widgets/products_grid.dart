import 'package:flutter/material.dart';
import 'package:shopping_app/providers/product.dart';
import 'package:shopping_app/providers/products.dart';
import 'package:shopping_app/widgets/product_item.dart';
import 'package:provider/provider.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemBuilder: (context, index) {
        return ChangeNotifierProvider.value(
          value: products[index],
          child: ProductItem(
            // id: products[index].id,
            // title: products[index].title,
            // imageURL: products[index].imageURL,
          ),
        );
      },
      itemCount: products.length,
      padding: const EdgeInsets.all(10.0),
    );
  }
}
