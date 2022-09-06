import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:work/services/api.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  void Login() {
    if (formkey.currentState!.validate()) {
      Api().loginApi(emailController.text, passwordController.text);
    }
  }
}
