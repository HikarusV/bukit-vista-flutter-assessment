import 'package:bukitvistaflutterassessment/common/month_convert.dart';
import 'package:bukitvistaflutterassessment/common/style.dart';
import 'package:bukitvistaflutterassessment/data/model/booking.dart';
import 'package:bukitvistaflutterassessment/presentation/widget/button_effect.dart';
import 'package:flutter/material.dart';

class BookingCard extends StatelessWidget {
  const BookingCard({
    Key? key,
    this.onTap,
    required this.bookData,
  }) : super(key: key);
  final VoidCallback? onTap;
  final Booking bookData;

  @override
  Widget build(BuildContext context) {
    bool isConfirmed = bookData.status == 0;

    return Center(
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        height: 104,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          border: Border.all(color: const Color(0xCCE1E0E0), width: 1),
          boxShadow: const [
            BoxShadow(
              color: Color(0x14000000),
              blurRadius: 10,
            ),
          ],
        ),
        child: ButtonEffect(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 12, left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 0,
                      child: Container(
                        height: 32,
                        width: 32,
                        margin: const EdgeInsets.only(right: 9),
                        decoration: BoxDecoration(
                          color: orangeColor.withAlpha(70),
                          borderRadius: BorderRadius.circular(90),
                        ),
                        child: Icon(
                          Icons.home_outlined,
                          color: orangeColor,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        bookData.bookId.toUpperCase(),
                        style: titleBookText,
                      ),
                    ),
                    Flexible(
                      flex: 0,
                      child: Container(
                        padding: const EdgeInsets.only(
                            top: 4, bottom: 4, left: 17, right: 13),
                        decoration: BoxDecoration(
                          color: isConfirmed
                              ? greenColor.withAlpha(70)
                              : redColor.withAlpha(70),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                          ),
                        ),
                        child: Text(
                          isConfirmed ? 'Confirmed' : 'Canceled',
                          style: isConfirmed
                              ? statusConfirmText
                              : statusCancelText,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 43),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        bookData.nameProfile,
                        style: bookingContentText,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            '${bookData.checkInDate} ${monthConvert(
                              month: bookData.checkInMonth,
                              monthFormat: MonthFormat.digits3,
                            )} ${bookData.checkInYear}',
                            style: hintText,
                          ),
                          Text(
                            ' - ',
                            style: hintText,
                          ),
                          Text(
                            '${bookData.checkOutDate} ${monthConvert(
                              month: bookData.checkOutMonth,
                              monthFormat: MonthFormat.digits3,
                            )} ${bookData.checkOutYear}',
                            style: hintText,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
