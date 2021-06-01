import 'package:flutter/material.dart';

import 'package:flutter_basics/widgets/cardCover.dart';

const jsonData = [
  {
    "imageUrl": "https://i.ytimg.com/vi/QL-6PdiDTeo/maxresdefault.jpg",
    "headline": "Headline",
    "description":
        "Write an amazing description to your project right here Write an amazing description to your project right here...",
  },
  {
    "imageUrl":
        "https://www.betterask.erni/wp-content/uploads/2018/09/ERNI-and-IoT-projects.jpg",
    "headline": "Headline",
    "description":
        "Write an amazing description to your project right here Write an amazing description to your project right here...",
  },
  {
    "imageUrl":
        "https://computerworld.com.br/wp-content/uploads/2020/01/Apple-terminou-2019-com-a-maior-receita-trimestral-de-sua-hist%C3%B3ria.png",
    "headline": "Headline",
    "description":
        "Write an amazing description to your project right here Write an amazing description to your project right here...",
  },
];

class ProjectsPage extends StatelessWidget {
  // final dataMap = jsonData["results"] as List<String>;

  List<Widget> getList() {
    var list = jsonData.map((project) {
      return Column(
        children: [
          CardCover(
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
                "Nossos Projetos",
                style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700]),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: getList(),
            ),
          ],
        ),
      ),
    );
  }
}
