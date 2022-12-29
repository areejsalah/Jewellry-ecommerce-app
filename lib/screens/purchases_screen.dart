import 'package:flutter/material.dart';
import 'package:flutter_application_1/repositories/dummy_data.dart';
import 'package:flutter_application_1/widgets/product_widget.dart';

class PurchasesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: products.where((element) => element.isChecked).length,
        itemBuilder: (context, index) {
          return ProductWidget(
              products.where((element) => element.isChecked).toList()[index]);
        });
  }
}
