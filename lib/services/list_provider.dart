import 'package:flutter/material.dart';

class ListProvider extends ChangeNotifier{
  List<int> numbers = [0,1,2,3];

  void Add(){
    numbers.add(numbers.last + 1);
    notifyListeners();
  }
}