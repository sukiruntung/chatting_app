import 'package:chatting_app/infrastructure/theme/app_color.dart';
import 'package:chatting_app/infrastructure/theme/app_font.dart';
import 'package:chatting_app/utils/extension/box_extension.dart';
import 'package:chatting_app/widgets/app_button.dart';
import 'package:chatting_app/widgets/app_input.dart';
import 'package:flutter/cupertino.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 55),
      child: Column(
        children: [
          AppInput(hint: 'Nama'),
          14.heightBox,
          AppInput(hint: 'Email'),
          14.heightBox,
          AppInput(hint: 'Password'),
          24.heightBox,
          AppButton(
            text: 'Register',
            onPressed: () {},
          ),
          28.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Sudah punya akun?',
                style: AppFont.input,
              ),
              Text(
                'Sign In',
                style: AppFont.input.copyWith(
                    color: AppColor.blue, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
