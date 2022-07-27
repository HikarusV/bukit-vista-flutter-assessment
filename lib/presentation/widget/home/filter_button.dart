import 'package:bukitvistaflutterassessment/presentation/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/style.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: () {
              context.read<HomeProvider>().filteredList();
            },
            child: SizedBox(
              width: 40,
              height: 40,
              child: Icon(
                Icons.filter_list,
                color: backgroundColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
