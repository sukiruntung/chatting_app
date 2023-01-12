import 'package:chatting_app/infrastructure/theme/theme.dart';
import 'package:chatting_app/utils/extension/box_extension.dart';
import 'package:chatting_app/utils/src/src.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class ForgotPasswordLogo extends StatelessWidget {
  const ForgotPasswordLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SvgPicture.asset(
            ImgString.keyLogo,
            width: 150,
            height: 150,
          ),
        ],
      ),
    );
  }
}
