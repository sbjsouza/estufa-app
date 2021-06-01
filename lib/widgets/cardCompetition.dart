import 'package:flutter/material.dart';

import 'package:flutter_basics/widgets/tagIcon.dart';
import 'package:line_icons/line_icon.dart';

class CardCompetition extends StatelessWidget {
  CardCompetition({
    @required this.imageUrl,
    @required this.headline,
    @required this.description,
  });

  final imageUrl;
  final headline;
  final description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 370,
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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageRounded(
            imageUrl: imageUrl,
          ),
          TextCard(
            headline: headline,
            description: description,
          ),
          Row(
            children: [
              TagIcon(
                child: Row(
                  children: [
                    LineIcon.award(),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Primeiro lugar América Latina",
                      maxLines: 1,
                      style: TextStyle(
                          color: Color(0xFF292d38),
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                color: Color(0xFFF5FAFD),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TextCard extends StatelessWidget {
  const TextCard({
    Key key,
    @required this.headline,
    @required this.description,
  }) : super(key: key);

  final String headline;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 10,
        bottom: 20,
        left: 10,
        right: 10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Curupira - realtime wildfire prediction",
            maxLines: 1,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w400,
              color: Colors.green[300],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            headline,
            maxLines: 1,
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w900,
            ),
          ),
          Container(
            height: 20,
          ),
          Text(
            description,
            maxLines: 2,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}

class ImageRounded extends StatelessWidget {
  ImageRounded({Key key, @required this.imageUrl}) : super(key: key);
  final imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(imageUrl),
        ),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
