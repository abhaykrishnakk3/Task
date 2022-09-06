import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work/controller/login_controller.dart';
import 'package:work/widgets/textstyle.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final logincontroller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: logincontroller.formkey,
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
               SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Empty";
                  }
                   if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                      .hasMatch(value)) {
                    return 'please Enter Valid email';
                  }
                },
                controller: logincontroller.emailController,
                decoration: textInputDecoration.copyWith(
                    label: const Text("Email"),
                    prefixIcon: const Icon(Icons.person)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              TextFormField(
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Empty";
                  }
                 
                  return null;
                },
                controller: logincontroller.passwordController,
                decoration: textInputDecoration.copyWith(
                    label: const Text("Password"),
                    prefixIcon: const Icon(Icons.lock)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(10),
                color: Colors.teal,
                child: MaterialButton(
                  padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                  minWidth: MediaQuery.of(context).size.width,
                  onPressed: () {
                    logincontroller.Login();
                  },
                  child: const Text('Get Started',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
