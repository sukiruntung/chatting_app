import 'package:chatting_app/infrastructure/theme/app_font.dart';
import 'package:chatting_app/utils/extension/box_extension.dart';
import 'package:chatting_app/widgets/app_input.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ListChatHeader extends StatelessWidget {
  const ListChatHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Text(
              'Chatting',
              style: AppFont.headerBlack,
            ),
          ),
          11.heightBox,
          const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: AppInput(
                hint: 'Cari disini',
                prefixIcon: Icon(Iconsax.search_normal_1),
              )),
        ],
      ),
    );
  }
}
