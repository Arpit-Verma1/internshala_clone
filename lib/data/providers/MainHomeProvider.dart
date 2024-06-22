import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainHomeProvider with ChangeNotifier {
  // Your provider code here
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;
  void updateCurrentIndex(int newIndex) {
    _currentIndex = newIndex;
    notifyListeners();
  }
}
