import 'package:bukitvistaflutterassessment/presentation/widget/home/search_box.dart';
import 'package:flutter/material.dart';

import 'filter_button.dart';

class SearchGroup {
  static PreferredSize searchBoxGroupWidget() {
    return PreferredSize(
      preferredSize: const Size(375, 91),
      child: Padding(
        padding: const EdgeInsets.only(left: 29, right: 29, bottom: 33),
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
    );
  }
}
