import 'package:bukitvistaflutterassessment/common/style.dart';
import 'package:bukitvistaflutterassessment/data/model/booking.dart';
import 'package:bukitvistaflutterassessment/presentation/widget/details/text_overview.dart';
import 'package:flutter/material.dart';

class HostingDetails extends StatelessWidget {
  const HostingDetails({Key? key, required this.bookData}) : super(key: key);
  final Booking bookData;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextOverview(
              title: 'Host',
              content: bookData.host,
              paddingBottom: 18,
            ),
            TextOverview(
              title: 'Profile Name',
              content: bookData.nameProfile,
              paddingBottom: 18,
            ),
            const TextOverview(
              title: 'Property Unit',
              content: 'ME Villa - B (1BR)',
              paddingBottom: 18,
            ),
            TextOverview(
              title: 'Listing Name',
              content: '4BR Homey Villa in Uluwatu | Kitchen + Wifi + Pool',
              paddingBottom: 18,
              contentColor: orangeColor,
            ),
          ],
        ),
      ],
    );
  }
}
