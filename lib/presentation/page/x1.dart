import 'package:bukitvistaflutterassessment/common/style.dart';
import 'package:bukitvistaflutterassessment/data/model/user.dart';
import 'package:bukitvistaflutterassessment/data/userdata_parse.dart';
import 'package:bukitvistaflutterassessment/presentation/widget/filter_button.dart';
import 'package:bukitvistaflutterassessment/presentation/widget/search_box.dart';
import 'package:bukitvistaflutterassessment/presentation/widget/user_card.dart';
import 'package:flutter/material.dart';

class X1Page extends StatelessWidget {
  const X1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<User> response =
        List.from(parseUserData.map((model) => User.fromJson(model)));
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size(375, 190),
        child: Container(
          color: blueColor,
          alignment: Alignment.center,
          child: Column(
            children: [
              Expanded(
                child: Align(
                  child: Text(
                    'Guest List',
                    style: titleText,
                  ),
                ),
              ),
              Flexible(
                flex: 0,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 29, right: 29, bottom: 33),
                  child: Row(
                    children: const [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: SearchBox(),
                        ),
                      ),
                      FilterButton()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
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
            name: response[index].name,
            city: response[index].city,
            country: response[index].country,
            photoUrl: response[index].photoUrl,
          ),
        ),
      ),
    );
  }
}
