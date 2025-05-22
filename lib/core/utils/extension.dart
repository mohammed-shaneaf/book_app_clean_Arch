import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  void pushNamedAndRemoveUntil(String routeName) {
    Navigator.of(this).pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  void pushNamed(String routeName) {
    Navigator.of(this).pushNamed(routeName);
  }

  void pop() {
    Navigator.of(this).pop();
  }

  void pushReplacementNamed(String routeName) {
    Navigator.of(this).pushReplacementNamed(routeName);
  }
}
