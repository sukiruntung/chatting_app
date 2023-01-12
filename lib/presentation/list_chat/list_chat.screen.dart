import 'package:chatting_app/presentation/list_chat/component/listchat_content.dart';
import 'package:chatting_app/presentation/list_chat/component/listchat_footer.dart';
import 'package:chatting_app/presentation/list_chat/component/listchat_header.dart';
import 'package:chatting_app/utils/extension/box_extension.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/list_chat.controller.dart';

class ListChatScreen extends GetView<ListChatController> {
  const ListChatScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        50.heightBox,
        const ListChatHeader(),
        const ListChatContent(),
        const ListChatFooter(),
      ],
    ));
  }
}
