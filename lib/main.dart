import 'package:flutter/material.dart';
import 'package:module_07_assainment/Screens/cart_screen.dart';
import 'package:module_07_assainment/models/product.dart';
import 'package:module_07_assainment/widgets/product_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.shopping_cart_rounded),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CartScreen(products: products)));
          }),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductItem(product: products[index]);
          }),
    );
  }
}
