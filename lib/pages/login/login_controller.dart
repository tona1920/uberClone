import 'package:flutter/material.dart';

class LoginController {
  BuildContext context;
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  Future init(BuildContext context) {
    this.context = context;
  }

  void login() {
    String email = emailController.text;
    String password = passwordController.text;

    print('Email: $email y password es: $password');
  }

  void goToRegisterPage() {
    Navigator.pushNamed(context, 'register');
  }

  void goToMap() {
    Navigator.pushNamed(context, 'map');
  }
}
