import 'package:chatting_app/infrastructure/theme/theme.dart';
import 'package:chatting_app/presentation/forgotpassword/component/forgotpassword_logo.dart';
import 'package:chatting_app/utils/extension/box_extension.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'component/forgotpassword_form.dart';
import 'controllers/forgotpassword.controller.dart';

class ForgotpasswordScreen extends GetView<ForgotpasswordController> {
  const ForgotpasswordScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Forgot Password',
            style: AppFont.headerBlack.copyWith(
              color: AppColor.blackComponen,
            ),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: AppColor.black,
            ),
          ),
          centerTitle: false,
          backgroundColor: AppColor.white,
        ),
        body: Column(
          children: [
            60.heightBox,
            const ForgotPasswordLogo(),
            65.heightBox,
            const ForgotPasswordForm(),
          ],
        ));
  }
}
