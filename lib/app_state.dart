import 'package:flutter/cupertino.dart';

class AppState extends ChangeNotifier {
  int selectedCategoryId = 0;

  void categorySelectionUpdate(int lastSelectedId) {
    selectedCategoryId = lastSelectedId;
    notifyListeners();
  }
}
