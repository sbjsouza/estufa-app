import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  Avatar({this.width, this.height, this.imageUrl});

  final width;
  final height;
  final imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.grey[50]),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(.3), blurRadius: 1.0)
        ],
        borderRadius: BorderRadius.circular(100),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(this.imageUrl),
        ),
      ),
    );
  }
}
