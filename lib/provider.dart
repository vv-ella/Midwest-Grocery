import 'package:flutter/material.dart';   

class OrderProvider with ChangeNotifier {
  final List<Map<String, dynamic>> _orders = [];

  List<Map<String, dynamic>> get orders => _orders;

  void addOrder(Map<String, dynamic> newOrder) {
    _orders.add(newOrder);
    notifyListeners();
  }
}