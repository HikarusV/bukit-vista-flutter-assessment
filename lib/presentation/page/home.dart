import 'package:bukitvistaflutterassessment/common/style.dart';
import 'package:bukitvistaflutterassessment/data/model/user.dart';
import 'package:bukitvistaflutterassessment/data/userdata_parse.dart';
import 'package:bukitvistaflutterassessment/presentation/page/detail.dart';
import 'package:bukitvistaflutterassessment/presentation/widget/custom_appbar.dart';
import 'package:bukitvistaflutterassessment/presentation/widget/home/filter_button.dart';
import 'package:bukitvistaflutterassessment/presentation/widget/home/search_box.dart';
import 'package:bukitvistaflutterassessment/presentation/widget/home/search_grup.dart';
import 'package:bukitvistaflutterassessment/presentation/widget/home/user_card.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<User> response =
        List.from(parseUserData.map((model) => User.fromJson(model)));
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(
        title: 'Guest List',
        bottom: SearchGroup.searchBoxGroupWidget(),
      ).customAppBarWidget(),
      body: ListView.builder(
        itemCount: response.length,
        padding: const EdgeInsets.only(
          left: 29,
          right: 23,
          top: 24,
        ),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(top: 9),
          child: UserCard(
            name: response[index].fullName,
            city: response[index].city,
            country: response[index].country,
            photoUrl: response[index].photoUrl,
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      Detail(
                    userTarget: response[index],
                  ),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    const begin = Offset(1.0, 0.0);
                    const end = Offset.zero;
                    final tween = Tween(begin: begin, end: end);
                    final offsetAnimation = animation.drive(tween);

                    return SlideTransition(
                      position: offsetAnimation,
                      child: child,
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
