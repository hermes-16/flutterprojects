import 'package:doodleblue_foodorder/widgets/add_delete_button.dart';
import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  final String id;
  final String name;
  final String ingrediants;
  final String price;
  final int quantity;

  OrderItem(
    this.id,
    this.name,
    this.ingrediants,
    this.price,
    this.quantity,
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Card(
      margin: EdgeInsets.only(
        top: size.height * 0.01,
        left: size.width * 0.05,
        right: size.width * 0.05,
      ),
      child: Container(
        margin: EdgeInsets.all(1),
        height: size.height * 0.14,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 19),
                ),
                AddDeleteButton(id, quantity),
              ],
            ),
            Container(
              width: size.width * 0.6,
              child: Text(
                ingrediants,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromRGBO(160, 160, 160, 1),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.012),
            Container(
              margin: EdgeInsets.all(0.5),
              child: Text(
                '\$${price.toString()}',
                style: TextStyle(fontSize: 18, color: Colors.yellow[800]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
