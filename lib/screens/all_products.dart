import 'package:flutter/material.dart';
import 'package:flutter_application_1/repositories/dummy_data.dart';
import 'package:flutter_application_1/widgets/product_widget.dart';

class AllProductsScreen extends StatelessWidget {
  Function function;
  AllProductsScreen(this.function);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 200,
          crossAxisCount: 2,
          mainAxisSpacing: 0,
          crossAxisSpacing: 0),
      itemCount: products.length,
      itemBuilder: ((context, index) {
        return ProductWidget(products[index], function);
      }),
    );
  }
}
