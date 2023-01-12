import 'package:flutter/widgets.dart';

extension BoxEtension on dynamic {
  Widget get heightBox => SizedBox(
        height: this * 1.0,
      );
  Widget get widthBox => SizedBox(
        width: this * 1.0,
      );
}
