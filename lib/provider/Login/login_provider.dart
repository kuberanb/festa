import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  bool isPasswordObscure = false;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  changePassowrdObscureStatus() {
    notifyListeners();
    isPasswordObscure = !isPasswordObscure;
    notifyListeners();
  }
}
