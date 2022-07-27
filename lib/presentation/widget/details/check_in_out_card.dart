import 'package:bukitvistaflutterassessment/common/style.dart';
import 'package:flutter/material.dart';

import '../../../common/mont_convert.dart';
import '../../../data/model/booking.dart';

class CheckInOutCard extends StatelessWidget {
  const CheckInOutCard({Key? key, required this.bookData}) : super(key: key);
  final Booking bookData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Check in',
                  style: hintText,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  bookData.checkInHour,
                  style: titleBookText,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  '${monthConvert(
                    month: bookData.checkInMonth,
                    monthFormat: MonthFormat.digits3,
                  )} ${bookData.checkInDate}, ${bookData.checkInYear}',
                  style: titleContentText,
                )
              ],
            ),
          ),
          Flexible(
            flex: 0,
            child: Column(
              children: const [
                Flexible(
                  child: Icon(Icons.nights_stay_outlined),
                ),
                Expanded(
                  child: Text('3 Nights'),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Check out',
                  style: hintText,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  bookData.checkOutHour,
                  style: titleBookText,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  '${monthConvert(
                    month: bookData.checkOutMonth,
                    monthFormat: MonthFormat.digits3,
                  )} ${bookData.checkOutDate}, ${bookData.checkOutYear}',
                  style: titleContentText,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
