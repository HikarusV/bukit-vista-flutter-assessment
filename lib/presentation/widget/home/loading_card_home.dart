import 'package:bukitvistaflutterassessment/common/style.dart';
import 'package:flutter/material.dart';

class LoadingHomeCard extends StatelessWidget {
  const LoadingHomeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 82,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: greyColor,
          border: Border.all(color: const Color(0xCCE1E0E0), width: 1),
          boxShadow: const [
            BoxShadow(
              color: Color(0x14000000),
              blurRadius: 10,
            ),
          ],
        ),
      ),
    );
  }
}
