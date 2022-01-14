import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/vheicle_list.dart';
import 'package:shop_app/widgets/details/details_main.dart';
import 'package:shop_app/widgets/home/home_main_page.dart';
import 'package:shop_app/widgets/productCart/cart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: ProductProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        routes: {
          '/product-details': (context) => const ProductDetailsPage(),
          '/my-cart': (context) => const MyCart(),
        },
      ),
    );
  }
}
