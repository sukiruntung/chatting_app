import 'package:chatting_app/infrastructure/navigation/routes.dart';
import 'package:chatting_app/infrastructure/theme/theme.dart';
import 'package:chatting_app/utils/extension/box_extension.dart';
import 'package:chatting_app/utils/src/img_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class DetailChatContent extends StatelessWidget {
  const DetailChatContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:
          ListView.builder(itemCount: 10, itemBuilder: (c, i) => _chatItem(i)),
    );
  }

  Widget _chatItem(int index) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment:
          index % 2 == 0 ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 13, left: 21, right: 21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 150,
                padding:
                    const EdgeInsets.symmetric(horizontal: 17, vertical: 9),
                decoration: BoxDecoration(
                  color: index % 2 == 0 ? AppColor.lightgrey : AppColor.blue2,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Besok aku jadi ya',
                  style: AppFont.subtitle.copyWith(color: AppColor.black),
                ),
              ),
              3.heightBox,
              const Padding(
                padding: EdgeInsets.only(right: 8),
                child: Text('8:10'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
