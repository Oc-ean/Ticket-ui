import 'package:flutter/material.dart';

class AppLayoutBuilder extends StatelessWidget {
  final bool? isColor;
  final int sections;
  final double width;
  const AppLayoutBuilder(
      {Key? key, this.isColor, required this.sections, this.width = 3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constrains) {
        print('Ths width is ${constrains.constrainWidth()}');
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
            (constrains.constrainWidth() / sections).floor(),
            (index) => SizedBox(
              width: width,
              height: 1,
              // width: AppLayOut.getWidth(4),
              // height: AppLayOut.getHeight(1),
              // width: 4,
              // height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: isColor == null ? Colors.white : Colors.grey[300],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
