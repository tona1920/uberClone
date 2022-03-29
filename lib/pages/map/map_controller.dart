import 'package:flutter/material.dart';

class MapPageController {
  BuildContext context;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // ignore: missing_return
  Future init(BuildContext context) {
    this.context = context;
  }

  void register() {
  }

  void goToMap() {
    Navigator.pushNamed(context, 'map');
  }
}
