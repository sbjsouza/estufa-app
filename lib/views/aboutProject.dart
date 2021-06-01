import 'package:flutter/material.dart';
import 'package:flutter_basics/widgets/button.dart';

class AboutProjectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Color(0xFFF5FAFD)),
        child: ListView(
          children: [
            Stack(
              children: [
                Image(
                  image: NetworkImage(
                      "https://i.ytimg.com/vi/QL-6PdiDTeo/maxresdefault.jpg"),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.all(20),
                  child: Text("Curupira"),
                ),
              ],
            ),
            Button(
              onTap: () {
                Navigator.pop(context);
              },
              buttonText: "Voltar",
              textColor: Color(0xFF167D7F),
              backgroundColor: Color(0xFFDDFFE7),
            )
          ],
        ),
      ),
    );
  }
}
