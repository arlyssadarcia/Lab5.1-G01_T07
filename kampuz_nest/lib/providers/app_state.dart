import 'package:flutter/foundation.dart';

// Shared navigation state. UI reads/updates this via Provider.
class AppState extends ChangeNotifier {
  static const int pageCount = 4;

  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void setIndex(int index) {
    if (index < 0 || index >= pageCount) return;
    if (index == _currentIndex) return;
    _currentIndex = index;
    notifyListeners();
  }
}
