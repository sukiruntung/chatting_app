import 'package:chatting_app/infrastructure/theme/app_color.dart';
import 'package:chatting_app/infrastructure/theme/app_font.dart';
import 'package:chatting_app/presentation/register/controllers/register.controller.dart';
import 'package:chatting_app/utils/extension/box_extension.dart';
import 'package:chatting_app/widgets/app_button.dart';
import 'package:chatting_app/widgets/app_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<RegisterController>();
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
            text: 'Register',
            onPressed: () {
              controller.btnHandleRegister();
            },
          ),
          28.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Sudah punya akun?',
                style: AppFont.input,
              ),
              GestureDetector(
                onTap: controller.handleSigninButton,
                child: Text(
                  'Sign In',
                  style: AppFont.input.copyWith(
                      color: AppColor.blue, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
