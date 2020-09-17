import 'package:doodleblue_foodorder/providers/menu.dart';
import 'package:doodleblue_foodorder/widgets/order_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final menuData = Provider.of<Menu>(context);
    final menuList = menuData.items;

    return Container(
      height: size.height * 0.355,
      child: ListView.builder(
        itemCount: menuList.length,
        itemBuilder: (ctx, i) => OrderItem(
          menuList[i].id,
          menuList[i].name,
          menuList[i].ingrediants,
          menuList[i].price.toString(),
          menuList[i].quantity,
        ),
      ),
    );
  }
}
