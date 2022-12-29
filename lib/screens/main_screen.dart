import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/product_model.dart';
import 'package:flutter_application_1/repositories/dummy_data.dart';
import 'package:flutter_application_1/screens/all_products.dart';
import 'package:flutter_application_1/screens/purchases_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  PageController pageController = PageController();
  int currentIndex = 0;
  void addToBasket(ProductModel productModel) {
    int index = products.indexOf(productModel);
    products[index].isChecked = !products[index].isChecked;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 249, 248, 248),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Center(
            child: Text('Areej Jewelry',
                style: TextStyle(
                    fontStyle: FontStyle.italic, color: Colors.black))),
      ),
      body: SafeArea(
        child: PageView(
            controller: pageController,
            children: [AllProductsScreen(addToBasket), PurchasesScreen()]),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            currentIndex = index;
            setState(() {});
            pageController.animateToPage(index,
                duration: const Duration(microseconds: 100),
                curve: Curves.linear);
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_shopping_cart_outlined),
                label: 'Purchases'),
          ]),
    );
  }
}
