import 'package:chatting_app/infrastructure/theme/theme.dart';
import 'package:chatting_app/utils/extension/box_extension.dart';
import 'package:chatting_app/widgets/app_input.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DetailChatFooter extends StatelessWidget {
  const DetailChatFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 33, vertical: 26),
      color: AppColor.lightgrey,
      child: Row(
        children: [
          const Expanded(
            child: AppInput(hint: 'Tulis pesan'),
          ),
          16.widthBox,
          Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: AppColor.blue2,
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Icon(
                Iconsax.send_1,
                color: AppColor.white,
              )),
        ],
      ),
    );
  }
}
