import 'package:chatting_app/infrastructure/theme/app_font.dart';
import 'package:chatting_app/utils/extension/box_extension.dart';
import 'package:chatting_app/utils/src/img_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterSocialMedia extends StatelessWidget {
  const RegisterSocialMedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Or Login With',
          style: AppFont.input,
        ),
        15.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              ImgString.googleLogo,
              width: 40,
              height: 40,
            ),
            37.widthBox,
            SvgPicture.asset(
              ImgString.appleLogo,
              width: 40,
              height: 40,
            ),
            37.widthBox,
            SvgPicture.asset(
              ImgString.facebookLogo,
              width: 40,
              height: 40,
            ),
          ],
        )
      ],
    );
  }
}
