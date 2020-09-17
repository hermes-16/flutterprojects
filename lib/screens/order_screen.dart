import 'package:doodleblue_foodorder/widgets/restaurent_name.dart';
import 'package:flutter/material.dart';
import '../widgets/menu_list.dart';
import '../widgets/cart_button.dart';

class OrderScreen extends StatelessWidget {
  static String routeName = '/order-screen';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          RestaurentName(),
          Container(
            margin: EdgeInsets.only(
              left: size.width * 0.05,
              top: size.height * 0.03,
              bottom: size.height * 0.02,
            ),
            height: size.height * 0.025,
            child: Text(
              'Starter :',
              style: TextStyle(fontSize: 18),
            ),
          ),
          MenuList(),
          CartButton(),
        ],
      ),
    );
  }
}
