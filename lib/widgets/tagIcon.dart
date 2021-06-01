import 'package:flutter/material.dart';

class TagIcon extends StatelessWidget {
  TagIcon({@required this.child, @required this.color});

  final child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(
        top: 10,
        bottom: 10,
        left: 20,
        right: 20,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100), color: this.color),
      child: child,
    );
  }
}
