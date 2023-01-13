import 'package:chatting_app/infrastructure/navigation/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;

  btnHandleLogin() async {
    if (_signinvalidator()) {
      Get.dialog(
        const Center(
          child: CircularProgressIndicator(),
        ),
      );
      try {
        var userAuth = await auth.signInWithEmailAndPassword(
            email: emailController.text, password: passwordController.text);
        Get.back();
        if (userAuth != null) {
          debugPrint(userAuth.user.toString());
          if (userAuth.user!.emailVerified) {
            Get.offAll(Routes.HOME);
          } else {
            Get.snackbar('Error', "please verified your email");
          }
        }
      } on FirebaseAuthException catch (e) {
        Get.snackbar('Error', e.message.toString());
      }
    }
  }

  bool _signinvalidator() {
    if (!emailController.text.isEmail) {
      Get.snackbar("Error", "Email tidak valid");
      return false;
    }
    if (passwordController.text.length < 6) {
      Get.snackbar("Error", "Password min 6 karakter");
      return false;
    }
    return true;
  }
  // final count = 0.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  // void increment() => count.value++;
}
