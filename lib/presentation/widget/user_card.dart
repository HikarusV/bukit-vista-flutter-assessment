import 'package:bukitvistaflutterassessment/common/style.dart';
import 'package:bukitvistaflutterassessment/presentation/page/x2.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    Key? key,
    this.name = 'Name',
    this.city = 'City',
    this.country = 'Country',
    required this.photoUrl,
    this.withTap = true,
    this.onTap,
    this.firstFollow = 'Dec 2021',
  }) : super(key: key);
  final bool withTap;
  final VoidCallback? onTap;
  final String photoUrl;
  final String name;
  final String city;
  final String country;
  final String firstFollow;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 82,
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
        child: withTap ? buttonEffect(context) : primaryContent(),
      ),
    );
  }

  Widget buttonEffect(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: onTap,
        child: primaryContent(),
      ),
    );
  }

  Widget primaryContent() {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              photoUrl,
            ),
            radius: 26,
          ),
          const SizedBox(
            width: 18,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: titleCardText,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  withTap ? '$city, $country' : 'Guest since $firstFollow',
                  style: titlePlaceText,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          withTap
              ? Icon(
                  Icons.navigate_next_outlined,
                  color: blueColor,
                )
              : Container()
        ],
      ),
    );
  }
}
