import 'package:bukitvistaflutterassessment/common/style.dart';
import 'package:bukitvistaflutterassessment/presentation/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
          Positioned(
            top: 0,
            bottom: 0,
            child: Icon(
              Icons.search,
              color: greyColor,
            ),
          ),
          TextField(
            onSubmitted: onEventSubmited,
            controller: context.read<HomeProvider>().searchController,
            onChanged: (text) =>
                context.read<HomeProvider>().serachByName(text),
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
