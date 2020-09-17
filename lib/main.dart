import 'package:doodleblue_foodorder/providers/menu.dart';
import 'package:doodleblue_foodorder/screens/cart_screen.dart';
import 'package:doodleblue_foodorder/screens/order_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/cart_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Menu(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: OrderScreen(),
        routes: {
          OrderScreen.routeName: (ctx) => OrderScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
        },
      ),
    );
  }
}
