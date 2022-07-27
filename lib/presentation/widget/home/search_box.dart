import 'package:bukitvistaflutterassessment/common/style.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key, this.onEventSubmited}) : super(key: key);
  final Function(String text)? onEventSubmited;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          const Positioned(
            top: 0,
            bottom: 0,
            child: Icon(Icons.search),
          ),
          TextField(
            onSubmitted: onEventSubmited,
            decoration: InputDecoration(
              hintText: 'Search your guest name',
              hintStyle: hintText,
              contentPadding: const EdgeInsets.only(
                  top: 11, bottom: 9, left: 35, right: 15),
              isDense: true,
              border: InputBorder.none,
            ),
          ),
        ],
      ),
    );
  }
}
