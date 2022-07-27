import 'package:flutter/material.dart';

import '../../common/style.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.0),
        border: Border(
          bottom: BorderSide(color: greyColor, width: 1),
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
    );
  }
}
