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
          Get.offAllNamed(Routes.LIST_CHAT);
        }
      } on FirebaseAuthException catch (e) {
        Get.snackbar('Error', e.message.toString());
      }
    }
  }

  cekLogin() async {
    var user = auth.currentUser;
    if (user != null) {
      return user.toString();
    } else {
      return null;
      // No user is signed in.
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

  void handleSignupButton() {
    Get.toNamed(Routes.REGISTER);
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
