import 'package:flutter/cupertino.dart';

class TapField with ChangeNotifier {
  final FocusNode focus = FocusNode();
  bool isTap = false;

  void _onfocusChange() {
    isTap = !isTap;
    notifyListeners();
  }

  void changeValue() {
    focus.addListener((_onfocusChange));
    notifyListeners();
  }
}
