import 'package:flutter/material.dart';

class ChnageTab extends ChangeNotifier {
  int _index = 0;

  int get index => _index;

  setInt(int index) {
    _index = index;
    notifyListeners();
  }
}
