import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/menu.dart';

class AddDeleteButton extends StatelessWidget {
  final String id;
  final int quantity;
  AddDeleteButton(this.id, this.quantity);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.all(6),
      width: size.width * 0.29,
      height: size.height * 0.05,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.yellow[600], width: 2)),
      child: Row(
        children: [
          IconButton(
            icon: Icon(
              Icons.remove,
              size: 14,
            ),
            onPressed: () {
              Provider.of<Menu>(context, listen: false).minusQuantity(id);
            },
          ),
          Text(quantity.toString()),
          IconButton(
            icon: Icon(
              Icons.add,
              size: 14,
            ),
            onPressed: () {
              Provider.of<Menu>(context, listen: false).addQuantity(id);
            },
          ),
        ],
      ),
    );
  }
}
