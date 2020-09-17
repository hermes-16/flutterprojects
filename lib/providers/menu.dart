import 'package:flutter/foundation.dart';

class MenuData {
  final String id;
  final String name;
  final String ingrediants;
  final double price;
  int quantity;

  MenuData({
    this.id,
    this.name,
    this.ingrediants,
    this.price,
    this.quantity,
  });
}

class Menu with ChangeNotifier {
  List<MenuData> _items = [
    MenuData(
      id: 'm1',
      name: 'Guac de la costa',
      ingrediants: 'tortillas de mais, passion, mango',
      price: 7,
      quantity: 0,
    ),
    MenuData(
      id: 'm2',
      name: 'Taco',
      ingrediants: 'tortillas de mais, chicken , tobassco',
      price: 10,
      quantity: 0,
    ),
    MenuData(
      id: 'm3',
      name: 'Quesedilla',
      ingrediants: 'tortillas de mais, pulled pork, mayo',
      price: 9,
      quantity: 0,
    ),
    MenuData(
      id: 'm4',
      name: 'Burrito',
      ingrediants: 'tortillas de mais, fatija chicken, rice',
      price: 7,
      quantity: 0,
    ),
  ];

  List<MenuData> get items {
    return [..._items];
  }

  int get itemCount {
    return _items.length;
  }

  void addQuantity(String id) {
    final index = _items.indexWhere((element) => id == element.id);
    if (_items[index].quantity < 20) {
      _items[index].quantity += 1;
    }
    notifyListeners();
  }

  int findIndex(String id) {
    return _items.indexWhere((element) => id == element.id);
  }

  void minusQuantity(String id) {
    final index = _items.indexWhere((element) => id == element.id);
    if (_items[index].quantity > 0) {
      _items[index].quantity -= 1;
    }
    notifyListeners();
  }

  int totalQuantity() {
    int sum = 0;
    for (int i = 0; i < _items.length; i++) {
      sum += _items[i].quantity;
    }
    return sum;
  }

  double totalPrice() {
    double individualSum = 0;
    double sum = 0;
    for (int i = 0; i < _items.length; i++) {
      individualSum = _items[i].price * _items[i].quantity;
      sum += individualSum;
    }
    return sum;
  }

  List<MenuData> nonZeroItems() {
    List<MenuData> items1 = [];
    for (int i = 0; i < _items.length; i++) {
      if (_items[i].quantity > 0) {
        items1.add(_items[i]);
      }
    }
    if (items1 != null) {
      return items1;
    } else {
      return null;
    }
  }
}
