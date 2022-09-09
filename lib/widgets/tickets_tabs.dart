import 'package:flutter/material.dart';

import '../utilities/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs(
      {Key? key, required this.firstTab, required this.secondTab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayOut.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xFFF4F6FD),
        ),
        child: Row(
          children: [
            // airline tickets
            Container(
              padding: EdgeInsets.symmetric(vertical: AppLayOut.getHeight(7)),
              width: size.width * .44,
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(50)),
                color: Colors.white,
              ),
              child: Center(
                child: Text(firstTab),
              ),
            ),
            // hotels
            Container(
              padding: EdgeInsets.symmetric(vertical: AppLayOut.getHeight(7)),
              width: size.width * .44,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.horizontal(
                  right: Radius.circular(50),
                ),
                color: Colors.grey.shade200,
              ),
              child: Center(
                child: Text(secondTab),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
