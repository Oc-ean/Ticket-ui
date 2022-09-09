import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utilities/app_layout.dart';
import 'package:ticket_booking_app/utilities/custom_styles.dart';
import 'package:ticket_booking_app/widgets/double_text_widget.dart';
import 'package:ticket_booking_app/widgets/icon_text_widget.dart';
import 'package:ticket_booking_app/widgets/tickets_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayOut.getSize(context);
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayOut.getWidth(20),
            vertical: AppLayOut.getHeight(20)),
        children: [
          Gap(
            AppLayOut.getHeight(45),
          ),
          Text(
            'What are\nyou looking for?',
            style: Styles.headLineStyle1.copyWith(fontSize: 35),
          ),
          Gap(
            AppLayOut.getHeight(20),
          ),
          const AppTicketTabs(
            firstTab: 'Airline tickets',
            secondTab: 'Hotels',
          ),
          Gap(
            AppLayOut.getHeight(25),
          ),
          const AppIconText(icon: Icons.flight_takeoff, text: 'Departure'),
          Gap(
            AppLayOut.getHeight(15),
          ),
          const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(
            AppLayOut.getHeight(25),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: AppLayOut.getWidth(18),
              horizontal: AppLayOut.getWidth(15),
            ),
            decoration: BoxDecoration(
              color: const Color(0xD91130CE),
              borderRadius: BorderRadius.circular(
                AppLayOut.getWidth(10),
              ),
            ),
            child: Center(
              child: Text(
                'Find tickets',
                style: Styles.textStyle.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Gap(
            AppLayOut.getHeight(30),
          ),
          const AppDoubleTextWidget(
              bigText: 'Upcoming Flights', smallText: 'View all'),
          Gap(
            AppLayOut.getHeight(15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayOut.getHeight(410),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayOut.getHeight(15),
                  vertical: AppLayOut.getWidth(15),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                      offset: const Offset(-5, -5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayOut.getWidth(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppLayOut.getHeight(12),
                        ),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/sit.jpg'),
                        ),
                      ),
                    ),
                    Gap(
                      AppLayOut.getHeight(12),
                    ),
                    Expanded(
                      child: Text(
                        "20% discount on the early booking of this flight. Don't miss out this chance.",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 12,
                        style: Styles.headLineStyle2,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayOut.getHeight(184),
                        decoration: BoxDecoration(
                          color: const Color(0xFF3A8888),
                          borderRadius: BorderRadius.circular(
                            AppLayOut.getHeight(18),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: AppLayOut.getHeight(15),
                          horizontal: AppLayOut.getHeight(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount\nfor survey',
                              style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Gap(
                              AppLayOut.getHeight(11),
                            ),
                            Text(
                              'Take the survey about our services and get discount ',
                              style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -35,
                        child: Container(
                          padding: EdgeInsets.all(
                            AppLayOut.getHeight(30),
                          ),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 18,
                                color: const Color(0xFF189999),
                              ),
                              color: Colors.transparent),
                        ),
                      ),
                      Positioned(
                        right: -45,
                        bottom: -45,
                        child: Container(
                          padding: EdgeInsets.all(
                            AppLayOut.getHeight(30),
                          ),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 18,
                                color: const Color(0xFF189999),
                              ),
                              color: Colors.transparent),
                        ),
                      ),
                    ],
                  ),
                  Gap(
                    AppLayOut.getHeight(15),
                  ),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayOut.getHeight(210),
                    padding: EdgeInsets.symmetric(
                      horizontal: AppLayOut.getHeight(12),
                      vertical: AppLayOut.getHeight(12),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppLayOut.getHeight(18),
                      ),
                      color: const Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Take love',
                          style: Styles.headLineStyle2.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Gap(
                          AppLayOut.getHeight(5),
                        ),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '😘',
                                style: TextStyle(fontSize: 32),
                              ),
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 45),
                              ),
                              TextSpan(
                                text: '🥰',
                                style: TextStyle(fontSize: 32),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
