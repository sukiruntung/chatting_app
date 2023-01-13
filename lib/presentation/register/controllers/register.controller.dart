import 'package:chatting_app/infrastructure/navigation/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final auth = FirebaseAuth.instance;

  btnHandleRegister() async {
    if (_signupvalidator()) {
      Get.dialog(
        const Center(
          child: CircularProgressIndicator(),
        ),
      );
      // auth
      //     .createUserWithEmailAndPassword(
      //         email: emailController.text, password: passwordController.text)
      //     .then((userAuth) {
      //   Get.back();
      //   if (userAuth != null) {
      //     debugPrint(userAuth.user.toString());
      //     Get.offAll(Routes.HOME);
      //   }
      // }).catchError((e) {
      //   debugPrint(e.toString())
      // });
      try {
        var userAuth = await auth.createUserWithEmailAndPassword(
            email: emailController.text, password: passwordController.text);
        Get.back();
        if (userAuth != null) {
          debugPrint(userAuth.user.toString());
          Get.offAllNamed(Routes.LIST_CHAT);
        }
      } on FirebaseAuthException catch (e) {
        Get.back();
        Get.snackbar('Error', e.message.toString());
      }
    }
  }

  bool _signupvalidator() {
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

  void handleSigninButton() {
    Get.toNamed(Routes.LOGIN);
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
