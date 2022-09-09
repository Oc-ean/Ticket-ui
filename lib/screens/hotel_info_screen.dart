import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utilities/app_layout.dart';
import 'package:ticket_booking_app/utilities/custom_styles.dart';

class HotelInfoScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelInfoScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Hotel price is ${hotel['price']}');
    final size = AppLayOut.getSize(context);
    return Container(
      margin: const EdgeInsets.only(right: 17, top: 5),
      width: size.width * 0.6,
      height: AppLayOut.getHeight(350),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: const [
          BoxShadow(
            color: Colors.white,
            blurRadius: 9,
            spreadRadius: 2,
            offset: Offset(5, 5),
          ),
          BoxShadow(
            color: Colors.grey,
            blurRadius: 9,
            spreadRadius: 2,
            offset: Offset(5, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayOut.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: DecorationImage(
                image: AssetImage('images/${hotel['image']}'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Gap(15),
          Text(
            hotel['place'],
            style: Styles.headLineStyle2.copyWith(color: Styles.tktmColor),
          ),
          Text(
            hotel['destination'],
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            '\$${hotel['price']}/night',
            style: Styles.headLineStyle1.copyWith(color: Styles.tktmColor),
          ),
        ],
      ),
    );
  }
}
