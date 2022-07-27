import 'package:bukitvistaflutterassessment/presentation/widget/back_button.dart';
import 'package:bukitvistaflutterassessment/presentation/widget/custom_appbar.dart';
import 'package:bukitvistaflutterassessment/presentation/widget/details/details_fragment/booking_fragment.dart';
import 'package:bukitvistaflutterassessment/presentation/widget/details/details_fragment/overview_fragment.dart';
import 'package:bukitvistaflutterassessment/presentation/widget/home/user_card.dart';
import 'package:bukitvistaflutterassessment/presentation/widget/tab_bar_widget.dart';
import 'package:flutter/material.dart';

import '../../common/style.dart';
import '../../data/model/user.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key, required this.userTarget}) : super(key: key);
  final User userTarget;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: const CustomAppBar(title: 'Guest Details').customAppBarWidget(
          leading: const CustomBackButton(),
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
                  const CustomTabBar(),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  OverviewFragment(userTarget: userTarget),
                  BookingFragment(
                    userPhoneNumber: userTarget.phone.replaceAll(' ', ''),
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
