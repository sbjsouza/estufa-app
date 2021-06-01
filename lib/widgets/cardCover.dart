import 'package:flutter/material.dart';

import 'package:flutter_basics/views/aboutProject.dart';

import 'button.dart';

class CardCover extends StatelessWidget {
  CardCover({
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
      height: 420,
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
          Container(
            padding: EdgeInsets.all(10),
            child: Button(
              buttonText: "Testando",
              // textColor: Color(0xFFFFFFFF),
              textColor: Color(0xFF167D7F),
              backgroundColor: Color(0xFFDDFFE7),
              // backgroundColor: Color(0xFF167D7F),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutProjectScreen()),
                );
              },
            ),
          )
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
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            headline,
            maxLines: 1,
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
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
