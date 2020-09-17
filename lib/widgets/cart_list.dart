import 'package:doodleblue_foodorder/widgets/delivery_options.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/menu.dart';

import '../widgets/cart_item.dart';

class CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final nonZero = Provider.of<Menu>(context);
    final nonZeroData = nonZero.nonZeroItems();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: size.height * 0.37,
          child: ListView.builder(
            itemCount: nonZeroData.length,
            itemBuilder: (ctx, i) => CartItem(
              nonZeroData[i].id,
              nonZeroData[i].name,
              nonZeroData[i].ingrediants,
              nonZeroData[i].price.toString(),
              nonZeroData[i].quantity,
            ),
          ),
        ),
        Container(
          color: Colors.grey[200],
          height: size.height * 0.0901,
          child: DeliveryOptions(),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(
            bottom: 0,
          ),
          height: size.height * 0.08,
          child: RaisedButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            label: Text(
              'Place Order ',
              style: TextStyle(color: Colors.white),
            ),
            elevation: 0,
            color: Color.fromRGBO(0, 0, 59, 1),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        )
      ],
    );
  }
}
