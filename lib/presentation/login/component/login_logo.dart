import 'package:chatting_app/infrastructure/theme/theme.dart';
import 'package:chatting_app/utils/extension/box_extension.dart';
import 'package:chatting_app/utils/src/src.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SvgPicture.asset(
            ImgString.appLogo,
            width: 145,
            height: 133,
          ),
          12.heightBox,
          Text(
            'Chatting App',
            style: AppFont.h1,
          )
        ],
      ),
    );
  }
}
