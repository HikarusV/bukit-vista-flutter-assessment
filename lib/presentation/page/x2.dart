import 'package:bukitvistaflutterassessment/presentation/widget/user_card.dart';
import 'package:flutter/material.dart';

import '../../common/style.dart';
import '../../data/model/user.dart';

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
    );
  }
}
