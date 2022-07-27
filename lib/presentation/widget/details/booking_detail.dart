import 'package:bukitvistaflutterassessment/data/model/booking.dart';
import 'package:bukitvistaflutterassessment/presentation/widget/details/text_overview.dart';
import 'package:flutter/material.dart';

class BookingDetails extends StatelessWidget {
  const BookingDetails(
      {Key? key, required this.bookData, this.phoneNumber = '082123892893'})
      : super(key: key);
  final Booking bookData;
  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextOverview(
                title: 'Booking ID',
                content: bookData.bookId.toUpperCase(),
                paddingBottom: 13,
              ),
              TextOverview(
                title: 'Number of guest',
                content: bookData.guest.toString(),
                paddingBottom: 13,
              ),
              TextOverview(
                title: 'Phone number',
                content: phoneNumber,
                paddingBottom: 13,
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextOverview(
                title: 'Booking Status',
                content: bookData.status == 0 ? 'Confirmed' : 'Cancelled',
                paddingBottom: 13,
                crossAxisAlignment: CrossAxisAlignment.end,
              ),
              TextOverview(
                title: 'Booking Value',
                content: bookData.bookValue,
                paddingBottom: 13,
                crossAxisAlignment: CrossAxisAlignment.end,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
