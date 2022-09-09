import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utilities/app_layout.dart';
import 'package:ticket_booking_app/utilities/custom_styles.dart';
import 'package:ticket_booking_app/utilities/layout_builder_widget.dart';
import 'package:ticket_booking_app/widgets/column_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayOut.getHeight(20),
            vertical: AppLayOut.getHeight(20)),
        children: [
          Gap(
            AppLayOut.getHeight(55),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayOut.getHeight(86),
                width: AppLayOut.getWidth(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppLayOut.getHeight(10),
                  ),
                  image: const DecorationImage(
                    image: AssetImage('images/img_1.png'),
                  ),
                ),
              ),
              Gap(
                AppLayOut.getHeight(10),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: Styles.headLineStyle1,
                  ),
                  Gap(
                    AppLayOut.getHeight(2),
                  ),
                  Text(
                    'New-york',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Gap(
                    AppLayOut.getHeight(8),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppLayOut.getHeight(100),
                        ),
                        color: Colors.grey.shade50
                        // color: const Color(0xFFFEF4F3),
                        ),
                    padding: EdgeInsets.symmetric(
                      horizontal: AppLayOut.getHeight(3),
                      vertical: AppLayOut.getHeight(3),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(
                          AppLayOut.getHeight(5),
                        ),
                        const Text(
                          'Premium status ',
                          style: TextStyle(
                              color: Color(0xFF526799),
                              fontWeight: FontWeight.w700),
                        ),
                        Gap(
                          AppLayOut.getHeight(5),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.only(top: 5),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Edit',
                        style: Styles.textStyle.copyWith(
                          color: Styles.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Gap(
            AppLayOut.getHeight(8),
          ),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(
            AppLayOut.getHeight(8),
          ),
          Stack(
            children: [
              Container(
                height: AppLayOut.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(
                    AppLayOut.getHeight(18),
                  ),
                ),
              ),
              Positioned(
                right: -45,
                top: -38,
                child: Container(
                  padding: EdgeInsets.all(
                    AppLayOut.getHeight(30),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 18,
                      color: const Color(0xFF264CD2),
                    ),
                  ),
                ),
              ),
              Gap(
                AppLayOut.getHeight(12),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayOut.getHeight(19),
                  vertical: AppLayOut.getHeight(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const CircleAvatar(
                      child: Icon(FluentSystemIcons
                          .ic_fluent_lightbulb_filament_filled),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    Gap(
                      AppLayOut.getHeight(10),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You\'ve got a new award',
                          style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'You have 95 flight in a year',
                          style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Gap(
            AppLayOut.getHeight(25),
          ),
          Text(
            'Accumulated miles',
            style: Styles.headLineStyle2,
          ),
          Gap(
            AppLayOut.getHeight(25),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayOut.getWidth(15),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                AppLayOut.getWidth(18),
              ),
              color: Styles.backgroundColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 10,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Column(
              children: [
                Gap(
                  AppLayOut.getHeight(15),
                ),
                Text(
                  '192802',
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w600,
                      color: Styles.textColor),
                ),
                Gap(
                  AppLayOut.getHeight(15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Miles accrued',
                      style: Styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      '11 May 2023',
                      style: Styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                Gap(
                  AppLayOut.getHeight(4),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      firstText: '23 042',
                      secondText: 'Miles',
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: 'Airline CO',
                      secondText: 'Received from',
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                Gap(
                  AppLayOut.getHeight(12),
                ),
                const AppLayoutBuilder(sections: 12, isColor: false),
                Gap(
                  AppLayOut.getHeight(12),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      firstText: '24',
                      secondText: 'Miles',
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: 'McDonal\'s',
                      secondText: 'Received from',
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                Gap(
                  AppLayOut.getHeight(8),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      firstText: '54 340',
                      secondText: 'Miles',
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: 'Flutter ',
                      secondText: 'Receive from',
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Gap(
            AppLayOut.getHeight(25),
          ),
          Center(
            child: Text(
              'How to get more miles',
              style: Styles.textStyle.copyWith(
                  color: Styles.primaryColor, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
