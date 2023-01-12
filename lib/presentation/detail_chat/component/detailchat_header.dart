import 'package:chatting_app/infrastructure/theme/app_font.dart';
import 'package:chatting_app/infrastructure/theme/theme.dart';
import 'package:chatting_app/utils/extension/box_extension.dart';
import 'package:chatting_app/utils/src/img_string.dart';
import 'package:chatting_app/widgets/app_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';

class DetailChatHeader extends StatelessWidget {
  const DetailChatHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      color: AppColor.blue2,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          const Icon(
            Iconsax.arrow_left_2,
            color: AppColor.white,
          ),
          12.widthBox,
          SvgPicture.asset(
            ImgString.profileLogo,
            width: 40,
            height: 40,
          ),
          14.widthBox,
          Text(
            'john Doe',
            style: AppFont.headerWhite.copyWith(color: AppColor.white),
          ),
        ],
      ),
    );
  }
}
