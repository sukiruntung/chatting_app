import 'package:chatting_app/presentation/register/component/register_form.dart';
import 'package:chatting_app/presentation/register/component/register_logo.dart';
import 'package:chatting_app/presentation/register/component/register_socialmedia.dart';
import 'package:chatting_app/utils/extension/box_extension.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/register.controller.dart';

class RegisterScreen extends GetView<RegisterController> {
  const RegisterScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          78.heightBox,
          const RegisterLogo(),
          52.heightBox,
          const RegisterForm(),
          28.heightBox,
          const RegisterSocialMedia(),
        ],
      ),
    ));
  }
}
