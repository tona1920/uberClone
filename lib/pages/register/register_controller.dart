import 'package:flutter/material.dart';

class RegisterController {
  BuildContext context;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController apellidoController = TextEditingController();
  TextEditingController nombreController = TextEditingController();
  TextEditingController cuidadController = TextEditingController();
  TextEditingController telefonoController = TextEditingController();
  TextEditingController codeController = TextEditingController();

  // ignore: missing_return
  Future init(BuildContext context) {
    this.context = context;
  }

  void register() {}

  void goToLoginPage() {
    Navigator.pushNamed(context, 'login');
  }
}
