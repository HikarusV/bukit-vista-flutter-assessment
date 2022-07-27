import 'package:bukitvistaflutterassessment/common/state_enum.dart';
import 'package:bukitvistaflutterassessment/common/style.dart';
import 'package:bukitvistaflutterassessment/presentation/page/detail.dart';
import 'package:bukitvistaflutterassessment/presentation/provider/detail_provider.dart';
import 'package:bukitvistaflutterassessment/presentation/provider/home_provider.dart';
import 'package:bukitvistaflutterassessment/presentation/widget/custom_appbar.dart';
import 'package:bukitvistaflutterassessment/presentation/widget/home/loading_card_home.dart';
import 'package:bukitvistaflutterassessment/presentation/widget/home/search_grup.dart';
import 'package:bukitvistaflutterassessment/presentation/widget/home/user_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    Future.microtask(
      () => Provider.of<HomeProvider>(context, listen: false)..fetchData(),
    );

    Future.microtask(
      () => Provider.of<DetailProvider>(context, listen: false)..fetchData(),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(
        title: 'Guest List',
        bottom: SearchGroup.searchBoxGroupWidget(),
      ).customAppBarWidget(),
      body: Consumer<HomeProvider>(
        builder: (context, value, _) {
          if (value.homeState == ResultState.hasData) {
            return ListView.builder(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              itemCount: value.consumeUserList.length,
              padding: const EdgeInsets.only(
                left: 29,
                right: 23,
                top: 24,
                bottom: 20,
              ),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(top: 9),
                child: UserCard(
                  name: value.consumeUserList[index].fullName,
                  city: value.consumeUserList[index].city,
                  country: value.consumeUserList[index].country,
                  photoUrl: value.consumeUserList[index].photoUrl,
                  onTap: () {
                    context.read<DetailProvider>().getUserBookingList(
                        value.consumeUserList[index].userId);
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            Detail(
                          userTarget: value.consumeUserList[index],
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
                    ).whenComplete(
                      () =>
                          context.read<DetailProvider>().resetUserBookingList(),
                    );
                  },
                ),
              ),
            );
          } else {
            return ListView.builder(
              padding: const EdgeInsets.only(
                left: 29,
                right: 23,
                top: 24,
              ),
              itemCount: 8,
              itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.only(top: 9),
                child: LoadingHomeCard(),
              ),
            );
          }
        },
      ),
    );
  }
}
