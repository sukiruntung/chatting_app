import 'package:chatting_app/infrastructure/theme/app_color.dart';
import 'package:chatting_app/infrastructure/theme/app_font.dart';
import 'package:flutter/material.dart';

class AppInput extends StatefulWidget {
  TextEditingController? controller;
  final String hint;
  AppInput({Key? key, required this.hint, this.controller}) : super(key: key);
  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: widget.hint,
          hintStyle: AppFont.input.copyWith(color: AppColor.grey3),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: AppColor.grey1,
            ),
          ),
        ),
      ),
    );
  }
}
