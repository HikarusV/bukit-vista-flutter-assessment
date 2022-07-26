import 'package:bukitvistaflutterassessment/common/style.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    Key? key,
    this.name = 'Name',
    this.city = 'City',
    this.country = 'Country',
    required this.photoUrl,
  }) : super(key: key);
  final String photoUrl;
  final String name;
  final String city;
  final String country;

  @override
  Widget build(BuildContext context) {
    return Container(
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
        child: Padding(
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
                      '$city, $country',
                      style: titlePlaceText,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Icon(
                Icons.navigate_next_outlined,
                color: blueColor,
              )
            ],
          ),
        ));
  }
}
