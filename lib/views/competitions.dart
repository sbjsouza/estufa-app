import 'package:flutter/material.dart';

import 'package:flutter_basics/widgets/cardCompetition.dart';

const jsonData = [
  {
    "imageUrl":
        "https://image.freepik.com/free-vector/australian-animals-silhouettes-running-from-forest-fires-australia-wildfire-bushfire-burning-trees-natural-disaster-concept-intense-orange-flames-horizontal_48369-23256.jpg",
    "headline": "CASS IEEE 2020",
    "description":
        "Write an amazing description to your project right here Write an amazing description to your project right here...",
  },
];

class CompetitionsScreen extends StatelessWidget {
  List<Widget> getList() {
    var list = jsonData.map((project) {
      return Column(
        children: [
          CardCompetition(
            imageUrl: project["imageUrl"],
            headline: project["headline"],
            description: project["description"],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      );
    });

    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Color(0xFFF5FAFD)),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(20),
              child: Text(
                "Competições",
                style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700]),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: getList(),
            )
          ],
        ),
      ),
    );
  }
}
