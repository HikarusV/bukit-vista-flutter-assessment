import 'package:flutter/material.dart';

import '../../../../common/style.dart';
import '../../../../data/userdata_parse.dart';
import '../book_card.dart';
import '../booking_detail.dart';
import '../check_in_out_card.dart';
import '../hosting_details.dart';

class BookingFragment extends StatelessWidget {
  const BookingFragment({Key? key, this.userPhoneNumber = '082123892893'})
      : super(key: key);
  final String userPhoneNumber;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 32),
      itemCount: dummyBook.length,
      itemBuilder: (context, index) => BookingCard(
        bookData: dummyBook[index],
        onTap: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(24),
              ),
            ),
            builder: (context) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 23),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 0,
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 28),
                          decoration: BoxDecoration(
                            color: greyColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          width: 31,
                          height: 3,
                        ),
                      ),
                    ],
                  ),
                  Flexible(
                    flex: 0,
                    child: CheckInOutCard(
                      bookData: dummyBook[index],
                    ),
                  ),
                  Flexible(
                    flex: 0,
                    child: BookingDetails(
                      bookData: dummyBook[index],
                      phoneNumber: userPhoneNumber,
                    ),
                  ),
                  Flexible(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      height: 58,
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      child: Text(
                        'Hosting details',
                        style: titleBookText,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  Flexible(
                    child: HostingDetails(
                      bookData: dummyBook[index],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
