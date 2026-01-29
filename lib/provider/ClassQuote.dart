import 'package:flutter/material.dart';

class Classquote extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void IncrementCount() {
    _counter++;
    notifyListeners();
  }
}
