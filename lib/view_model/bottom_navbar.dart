import 'package:flutter/material.dart';

// provide to navigate between bottom tabs...!

class BottomNavbarState with ChangeNotifier {
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  void setIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
