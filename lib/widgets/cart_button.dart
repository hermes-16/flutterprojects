import 'package:doodleblue_foodorder/screens/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/menu.dart';

class CartButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int totalQuantity = Provider.of<Menu>(context).totalQuantity();
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.07,
      width: double.infinity,
      child: RaisedButton.icon(
        onPressed: () {
          Navigator.of(context).pushNamed(CartScreen.routeName);
        },
        icon: Icon(
          Icons.shopping_cart,
          color: Colors.white,
        ),
        label: Text(
          'Cart ($totalQuantity Items) ',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
        color: Color.fromRGBO(0, 0, 59, 1),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }
}
