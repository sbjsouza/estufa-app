import 'package:flutter/material.dart';

import 'avatar.dart';
import 'tag.dart';

class CardPerson extends StatelessWidget {
  CardPerson({
    @required this.imageUrl,
    @required this.name,
    @required this.occupation,
    @required this.mail,
    @required this.bio,
  });

  final imageUrl;
  final name;
  final occupation;
  final mail;
  final bio;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 340,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2,
            offset: Offset(0, 0),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PersonTag(name: name, occupation: occupation, imageUrl: imageUrl),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 180,
            child: Tag(
              content: mail,
              color: Color(0xFFF5FAFD),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            bio,
            maxLines: 7,
            style: TextStyle(
              fontSize: 17,
              color: Colors.grey[500],
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class PersonTag extends StatelessWidget {
  PersonTag(
      {@required this.name,
      @required this.occupation,
      @required this.imageUrl});

  final String name;
  final String occupation;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Avatar(
            width: 60.0,
            height: 60.0,
            imageUrl: imageUrl,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                maxLines: 1,
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                occupation,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.green[200],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
