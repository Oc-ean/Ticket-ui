import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/screens/ticket_view.dart';
import 'package:ticket_booking_app/utilities/app_info.dart';
import 'package:ticket_booking_app/utilities/app_layout.dart';
import 'package:ticket_booking_app/utilities/custom_styles.dart';
import 'package:ticket_booking_app/widgets/column_layout.dart';
import 'package:ticket_booking_app/widgets/tickets_tabs.dart';

import '../utilities/layout_builder_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayOut.getSize(context);
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayOut.getWidth(20),
              vertical: AppLayOut.getHeight(20),
            ),
            children: [
              Gap(
                AppLayOut.getHeight(45),
              ),
              Text(
                'Tickets',
                style: Styles.headLineStyle1,
              ),
              Gap(
                AppLayOut.getHeight(20),
              ),
              const AppTicketTabs(firstTab: 'Upcoming', secondTab: 'Previous'),
              Gap(
                AppLayOut.getHeight(20),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: AppLayOut.getHeight(15),
                ),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 20,
                ),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          alignment: CrossAxisAlignment.start,
                          firstText: 'Flutter OC',
                          secondText: 'Passenger',
                          isColor: false,
                        ),
                        AppColumnLayout(
                          alignment: CrossAxisAlignment.end,
                          firstText: '5342 5884476',
                          secondText: 'Passport',
                          isColor: false,
                        ),
                      ],
                    ),
                    Gap(
                      AppLayOut.getHeight(20),
                    ),
                    const AppLayoutBuilder(
                      sections: 15,
                      isColor: false,
                      width: 5,
                    ),
                    Gap(
                      AppLayOut.getHeight(10),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          alignment: CrossAxisAlignment.start,
                          firstText: '9893 454 62657',
                          secondText: 'Numbers of E -ticket',
                          isColor: false,
                        ),
                        AppColumnLayout(
                          alignment: CrossAxisAlignment.end,
                          firstText: 'R345D72',
                          secondText: 'Booking code',
                          isColor: false,
                        ),
                      ],
                    ),
                    Gap(
                      AppLayOut.getHeight(20),
                    ),
                    const AppLayoutBuilder(
                      sections: 15,
                      isColor: false,
                      width: 5,
                    ),
                    Gap(
                      AppLayOut.getHeight(20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'images/visa.png',
                                  scale: 11,
                                ),
                                Text(
                                  ' *** 3456',
                                  style: Styles.headLineStyle3,
                                )
                              ],
                            ),
                            Gap(
                              AppLayOut.getHeight(5),
                            ),
                            Text(
                              'Payment method',
                              style: Styles.headLineStyle4,
                            )
                          ],
                        ),
                        const AppColumnLayout(
                          alignment: CrossAxisAlignment.end,
                          firstText: '\$322.99',
                          secondText: 'Price',
                          isColor: false,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                  ],
                ),
              ),
              // bar code
              const SizedBox(
                height: 1,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(
                      AppLayOut.getHeight(21),
                    ),
                    bottomLeft: Radius.circular(
                      AppLayOut.getHeight(21),
                    ),
                  ),
                  color: Colors.white,
                ),
                margin: EdgeInsets.only(
                  left: AppLayOut.getHeight(15),
                  right: AppLayOut.getHeight(15),
                ),
                padding: EdgeInsets.only(
                  top: AppLayOut.getHeight(20),
                  bottom: AppLayOut.getHeight(20),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayOut.getHeight(15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      AppLayOut.getHeight(15),
                    ),
                    child: BarcodeWidget(
                      data: 'https:// github.com/martinovovo',
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: AppLayOut.getHeight(15),
                ),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
            ],
          ),
          Positioned(
            left: AppLayOut.getHeight(22),
            top: AppLayOut.getHeight(295),
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayOut.getHeight(22),
            top: AppLayOut.getHeight(295),
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
