import 'package:bukitvistaflutterassessment/data/userdata_parse.dart';
import 'package:bukitvistaflutterassessment/presentation/widget/details/book_card.dart';
import 'package:bukitvistaflutterassessment/presentation/widget/details/booking_detail.dart';
import 'package:bukitvistaflutterassessment/presentation/widget/details/check_in_out_card.dart';
import 'package:bukitvistaflutterassessment/presentation/widget/details/text_overview.dart';
import 'package:bukitvistaflutterassessment/presentation/widget/home/user_card.dart';
import 'package:flutter/material.dart';

import '../../common/style.dart';
import '../../data/model/user.dart';
import '../widget/details/hosting_details.dart';

class X2 extends StatelessWidget {
  const X2({Key? key, required this.userTarget}) : super(key: key);
  final User userTarget;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          toolbarHeight: 99,
          title: Text(
            'Guest Details',
            style: titleText,
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
        ),
        body: Column(
          children: [
            Flexible(
              flex: 0,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 26, left: 26, right: 26, bottom: 10),
                    child: UserCard(
                      photoUrl: userTarget.photoUrl,
                      name: userTarget.fullName,
                      withTap: false,
                      firstFollow: userTarget.firstFollow,
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      //This is for background color
                      color: Colors.white.withOpacity(0.0),

                      //This is for bottom border that is needed
                      border: Border(
                        bottom: BorderSide(color: greyColor, width: 2),
                      ),
                    ),
                    child: TabBar(
                      labelColor: blueColor,
                      unselectedLabelColor: greyColor,
                      tabs: const [
                        Tab(
                          icon: Text('Overview'),
                        ),
                        Tab(
                          icon: Text('Bookings'),
                        ),
                        Tab(
                          icon: Text('Personas'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextOverview(
                          title: 'Email',
                          content: userTarget.email,
                          paddingBottom: 18,
                        ),
                        TextOverview(
                          title: 'Phone Number',
                          content: userTarget.phone.replaceAll(' ', ''),
                          paddingBottom: 18,
                        ),
                        TextOverview(
                          title: 'Guest Origin',
                          content: '${userTarget.city}, ${userTarget.country}',
                          paddingBottom: 18,
                        ),
                      ],
                    ),
                  ),
                  ListView.builder(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 26, vertical: 32),
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
                            margin: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 23),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      flex: 0,
                                      child: Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 28),
                                        decoration: BoxDecoration(
                                          color: greyColor,
                                          borderRadius:
                                              BorderRadius.circular(8),
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
                                    phoneNumber:
                                        userTarget.phone.replaceAll(' ', ''),
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    height: 58,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 18),
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
                  ),
                  const Center(
                    child: Text('Under Construct'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
