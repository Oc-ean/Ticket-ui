import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utilities/app_layout.dart';
import '../utilities/custom_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  final bool? isColor;
  const AppColumnLayout({
    Key? key,
    required this.firstText,
    required this.secondText,
    required this.alignment,
    this.isColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      //  style: isColor == null
      //                                 ? Styles.headLineStyle3
      //                                     .copyWith(color: Colors.white)
      //                                 : Styles.headLineStyle3,
      children: [
        Text(
          firstText,
          style: isColor == null
              ? Styles.headLineStyle3.copyWith(color: Colors.white)
              : Styles.headLineStyle3,
        ),
        Gap(
          AppLayOut.getHeight(5),
        ),
        Text(
          secondText,
          style: isColor == null
              ? Styles.headLineStyle4.copyWith(color: Colors.white)
              : Styles.headLineStyle4,
        ),
      ],
    );
  }
}
