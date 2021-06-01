import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:line_icons/line_icons.dart';

class NavBar extends StatefulWidget {
  NavBar({@required this.changePageIndex});
  final Function(int) changePageIndex;

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int indexSelected = 0;

  void initState() {
    indexSelected = 0;
    super.initState();
  }

  void changeSelectedIndex(int index) {
    setState(() {
      indexSelected = index;
      widget.changePageIndex(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            offset: Offset(0, -1),
            color: Color(0x11000000),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Color(0xFFFFFFFF),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavBarItem(
            label: "Início",
            icon: LineIcons.igloo,
            indexSelected: indexSelected,
            changeSelectedIndex: changeSelectedIndex,
            index: 0,
          ),
          NavBarItem(
            label: "Projetos",
            icon: LineIcons.seedling,
            indexSelected: indexSelected,
            changeSelectedIndex: changeSelectedIndex,
            index: 1,
          ),
          NavBarItem(
            label: "Membros",
            icon: LineIcons.leaf,
            indexSelected: indexSelected,
            changeSelectedIndex: changeSelectedIndex,
            index: 2,
          ),
          NavBarItem(
            label: "Competições",
            icon: LineIcons.trophy,
            indexSelected: indexSelected,
            changeSelectedIndex: changeSelectedIndex,
            index: 3,
          ),
        ],
      ),
    );
  }
}

class NavBarItem extends StatefulWidget {
  NavBarItem({
    Key key,
    @required this.label,
    @required this.icon,
    @required this.indexSelected,
    @required this.changeSelectedIndex,
    @required this.index,
  }) : super(key: key);

  final String label;
  final IconData icon;
  final int indexSelected;
  final Function(int) changeSelectedIndex;
  final int index;

  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.changeSelectedIndex(widget.index);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 120),
        curve: Curves.easeInOut,
        padding: widget.index == widget.indexSelected
            ? EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5)
            : EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
        height: 40,
        decoration: widget.index == widget.indexSelected
            ? BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color(0xFFDDFFE7),
                borderRadius: BorderRadius.circular(100),
              )
            : null,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.icon,
              color: Color(0xFF506b58),
              size: 30,
            ),
            widget.index == widget.indexSelected
                ? AnimatedContainer(
                    duration: Duration(milliseconds: 1200),
                    curve: Curves.bounceInOut,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          widget.label,
                          style: TextStyle(
                              color: Color(0xFF506b58),
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
