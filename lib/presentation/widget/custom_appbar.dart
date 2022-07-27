import 'package:flutter/material.dart';

import '../../common/style.dart';

class CustomAppBar {
  const CustomAppBar({Key? key, this.title = 'Title Page', this.bottom});
  final String title;
  final PreferredSizeWidget? bottom;

  PreferredSizeWidget customAppBarWidget({Widget? leading}) {
    return AppBar(
      toolbarHeight: 99,
      title: Text(
        title,
        style: titleText,
      ),
      centerTitle: true,
      leading: leading ?? Container(),
      bottom: bottom,
    );
  }
}
