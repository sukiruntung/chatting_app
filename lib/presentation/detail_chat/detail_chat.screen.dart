import 'package:chatting_app/presentation/detail_chat/component/detailchat_content.dart';
import 'package:chatting_app/presentation/detail_chat/component/detailchat_footer.dart';
import 'package:chatting_app/presentation/detail_chat/component/detailchat_header.dart';
import 'package:chatting_app/utils/extension/box_extension.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/detail_chat.controller.dart';

class DetailChatScreen extends GetView<DetailChatController> {
  const DetailChatScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          32.heightBox,
          const DetailChatHeader(),
          const DetailChatContent(),
          const DetailChatFooter(),
        ],
      ),
    );
  }
}
