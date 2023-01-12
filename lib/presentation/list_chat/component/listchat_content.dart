import 'package:chatting_app/infrastructure/theme/app_font.dart';
import 'package:chatting_app/infrastructure/theme/theme.dart';
import 'package:chatting_app/utils/extension/box_extension.dart';
import 'package:chatting_app/utils/src/img_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListChatContent extends StatelessWidget {
  const ListChatContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 10, itemBuilder: (c, i) => _userListItem()),
    );
  }

  Widget _userListItem() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 20),
      margin: const EdgeInsets.only(top: 13),
      color: AppColor.lightgrey,
      child: Row(
        children: [
          SvgPicture.asset(
            ImgString.profileLogo,
            width: 60,
            height: 60,
          ),
          13.widthBox,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'The Ngoding',
                      style: AppFont.subtitle,
                    ),
                    Text(
                      'Kemarin',
                      style: AppFont.input,
                    ),
                  ],
                ),
                9.heightBox,
                const Text('Besok ketemuan di warung jajan'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
