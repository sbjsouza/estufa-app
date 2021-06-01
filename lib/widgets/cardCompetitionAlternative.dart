import 'package:flutter/material.dart';

class CardCompetition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(0, 1.9),
      children: [
        CoverCard(),
        InnerCard(),
      ],
    );
  }
}

class CoverCard extends StatelessWidget {
  const CoverCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: 370,
      height: 230,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              "https://image.freepik.com/free-vector/australian-animals-silhouettes-running-from-forest-fires-australia-wildfire-bushfire-burning-trees-natural-disaster-concept-intense-orange-flames-horizontal_48369-23256.jpg"),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2,
            offset: Offset(0, 0),
          ),
        ],
      ),
    );
  }
}

class InnerCard extends StatelessWidget {
  const InnerCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: 300,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(blurRadius: 40, color: Colors.black12)],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "IEEE CASS 2020",
            maxLines: 1,
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
