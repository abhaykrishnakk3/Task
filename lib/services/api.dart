import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:work/view/home_screen.dart';

class Api {
  loginApi(String email, String password) async {
    final baseurl = 'http://185.188.127.100/WaselleApi/api/LoginDetails?';
    try {
      final responce = await Dio().get(
          "${baseurl}UName=${email}&Password=${password}&UserType=Customer");
log(responce.statusCode.toString());
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        Get.snackbar("Success", "Login");
        Get.to(HomeScreen());
      }
    } on DioError catch (e) {
      log(e.error.toString());
    }
  }
}
