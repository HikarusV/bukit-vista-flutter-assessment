import 'package:flutter/material.dart';

import '../../../../data/model/user.dart';
import '../text_overview.dart';

class OverviewFragment extends StatelessWidget {
  const OverviewFragment({Key? key, required this.userTarget})
      : super(key: key);
  final User userTarget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 24),
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
    );
  }
}
