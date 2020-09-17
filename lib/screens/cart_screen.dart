import 'package:doodleblue_foodorder/widgets/cart_list.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/menu.dart';

class CartScreen extends StatefulWidget {
  static const routeName = '/cart-screen';

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
        backgroundColor: Color.fromRGBO(0, 0, 61, 1),
        elevation: 0,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: size.height * 0.3,
                color: Color.fromRGBO(0, 0, 61, 1),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: size.height * 0.04,
                  left: size.width * 0.25,
                  right: size.width * 0.25,
                ),
                width: size.width * 0.7,
                height: size.height * 0.17,
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(height: size.height * 0.03),
                      Text(
                        'Total Cost',
                        style:
                            TextStyle(fontSize: 20, color: Colors.yellow[800]),
                      ),
                      SizedBox(height: size.height * 0.02),
                      Text(
                        '\$${Provider.of<Menu>(context).totalPrice().toString()}',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: size.width * 0.03),
            child: Text(
              'REVIEW ORDERS',
              style: TextStyle(fontSize: 16),
            ),
          ),
          CartList(),
        ],
      ),
    );
  }
}
