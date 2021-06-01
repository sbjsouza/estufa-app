import 'package:flutter/material.dart';

import 'package:flutter_basics/widgets/button.dart';
import 'package:flutter_basics/widgets/appBar.dart' as AppBar;
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_basics/widgets/card.dart' as Card;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: [
                  SafeArea(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            FirstSection(),
                            // SecondSection(),
                          ],
                        ),
                        // AppBar.AppBar(),
                      ],
                    ),
                  ),
                  Card.Card(),
                  Button(
                    buttonText: "Testando",
                    textColor: Color(0xFF167D7F),
                    backgroundColor: Color(0xFFDDFFE7),
                    onTap: () {
                      print("Olá, esta é uma função!");
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FirstSection extends StatelessWidget {
  const FirstSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, bottom: 0),
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(color: Color(0xFFF5FAFD)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 60),
            child: FirstSectionAnimation(),
          ),
          Text(
            "Estufa. Um lugar onde se cultivam ideias inovadoras.",
            textAlign: TextAlign.center,
            style: GoogleFonts.frankRuhlLibre(
                fontSize: 30, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class FirstSectionAnimation extends StatelessWidget {
  const FirstSectionAnimation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/plantAnimation.gif'), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(40),
      ),
    );
  }
}
