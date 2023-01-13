import 'package:chatting_app/presentation/login/controllers/login.controller.dart';
import 'package:chatting_app/utils/extension/box_extension.dart';
import 'package:chatting_app/widgets/app_button.dart';
import 'package:chatting_app/widgets/app_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.find<LoginController>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 55),
      child: Column(
        children: [
          AppInput(
            hint: 'Email',
            controller: controller.emailController,
          ),
          14.heightBox,
          AppInput(
            hint: 'Password',
            controller: controller.passwordController,
            obsecureText: true,
          ),
          24.heightBox,
          AppButton(
            text: 'Login',
            onPressed: () {
              controller.btnHandleLogin();
            },
          ),
        ],
      ),
    );
  }
}
