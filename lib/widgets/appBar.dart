import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'avatar.dart';
import 'button.dart';
import 'tag.dart';

class AppBar extends StatefulWidget {
  @override
  _AppBarState createState() => _AppBarState();
}

class _AppBarState extends State<AppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: 15, right: 15, top: 10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            ".estufa",
            style: GoogleFonts.frankRuhlLibre(
                fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            child: List(),
          ),
        ],
      ),
    );
  }
}

class List extends StatelessWidget {
  const List({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        // Tag(color: Color(0xFFF5F5F5), content: "Oi"),
        ButtonTag(
          buttonText: "Testando",
          textColor: Color(0xFF292929),
          backgroundColor: Color(0xFFF5F5F5),
          onTap: () {
            print("Olá, esta é uma função!");
          },
        )
      ],
    );
  }
}
