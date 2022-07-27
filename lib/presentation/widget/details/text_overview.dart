import 'package:bukitvistaflutterassessment/common/style.dart';
import 'package:flutter/material.dart';

class TextOverview extends StatelessWidget {
  const TextOverview({
    Key? key,
    this.title = 'Title',
    this.content = 'Content Text',
    this.paddingBottom = 0,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.contentColor,
  }) : super(key: key);
  final String title;
  final String content;
  final double paddingBottom;
  final Color? contentColor;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: paddingBottom),
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        children: [
          Text(
            title,
            style: titlePlaceText,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            content,
            style: TextStyle(
                fontSize: titleContentText.fontSize,
                color: contentColor ?? titleContentText.color),
          ),
        ],
      ),
    );
  }
}
