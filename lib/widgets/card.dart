import 'package:flutter/material.dart';
import 'avatar.dart';
import 'tag.dart';

class Card extends StatefulWidget {
  @override
  _CardState createState() => _CardState();
}

class _CardState extends State<Card> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(20),
      width: 340,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(blurRadius: 5.0, color: Colors.grey.withOpacity(0.4))
          ]),
      child: Column(
        children: <Widget>[
          Avatar(
              width: 70.0,
              height: 70.0,
              imageUrl:
                  "https://einvestidor.estadao.com.br/wp-content/uploads/sites/715/2020/06/tim-cook-apple_010620205149.jpg"),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              "Tim",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Tag(
                  content: "Testando a Tag!",
                  color: Color(0xDDedf2f7),
                ),
                Tag(
                  content: "A Tag funciona",
                  color: Color(0xDDedf2f7),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
