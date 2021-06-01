import 'package:flutter/material.dart';

import 'package:flutter_basics/widgets/cardPerson.dart';

var membersData = [
  {
    "name": "Chris Martin",
    "occupation": "Designer UI/UX",
    "imageUrl":
        "https://www.biowritingservice.com/wp-content/themes/tuborg/images/Executive%20Bio%20Sample%20Photo.png",
    "mail": "sbjs@cin.ufpe.br",
    "bio":
        "\"Design de interface de utilizador ou engenharia de interface de utilizador é o desenvolvimento de computadores, aplicações, máquinas, dispositivos de comunicação móveis, softwares e sítios web com o foco na experiência do utilizadores e interação.\"",
  },
  {
    "name": "Chris Martin",
    "occupation": "Designer UI/UX",
    "imageUrl":
        "https://www.biowritingservice.com/wp-content/themes/tuborg/images/Executive%20Bio%20Sample%20Photo.png",
    "mail": "sbjs@cin.ufpe.br",
    "bio":
        "\"Design de interface de utilizador ou engenharia de interface de utilizador é o desenvolvimento de computadores, aplicações, máquinas, dispositivos de comunicação móveis, softwares e sítios web com o foco na experiência do utilizadores e interação.\"",
  },
];

class MembersScreen extends StatelessWidget {
  List<Widget> getList() {
    return membersData
        .map(
          (member) => Column(children: [
            CardPerson(
              name: member["name"],
              occupation: member["occupation"],
              imageUrl: member["imageUrl"],
              mail: member["mail"],
              bio: member["bio"],
            ),
            SizedBox(
              height: 20,
            ),
          ]),
        )
        .toList();
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
                "Nossa Equipe",
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
