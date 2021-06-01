import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  Tag({@required this.content, @required this.color});

  final String content;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100), color: this.color),
      child: Text(
        this.content,
        maxLines: 1,
        style: TextStyle(
            color: Color(0xFF292d38),
            fontSize: 15,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
