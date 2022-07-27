import 'package:flutter/material.dart';

class ButtonEffect extends StatelessWidget {
  const ButtonEffect({Key? key, this.onTap, this.child}) : super(key: key);
  final VoidCallback? onTap;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: onTap,
        child: child,
      ),
    );
  }
}
