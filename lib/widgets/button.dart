import 'package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';

class Button extends StatefulWidget {
  Button(
      {this.buttonText,
      this.backgroundColor,
      this.textColor,
      this.onTap,
      this.scale});

  final String buttonText;
  final Color backgroundColor;
  final Color textColor;
  final Function onTap;
  final double scale;

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  Color backgroundColor;
  Color textColor;
  double scale = 1.0;

  @override
  void initState() {
    backgroundColor = widget.backgroundColor;
    textColor = widget.textColor;
    scale = 1.0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      child: Transform.scale(
        scale: scale,
        child: Material(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8),
          child: InkWell(
            borderRadius: BorderRadius.circular(8),
            onHover: (value) {
              if (value) {
                setState(() {
                  backgroundColor = Colors.grey[300];
                  textColor = Colors.black87;
                });
              } else {
                setState(() {
                  backgroundColor = widget.backgroundColor;
                  textColor = widget.textColor;
                });
              }
            },
            onTap: () {
              widget.onTap();
            },
            onHighlightChanged: (value) {
              if (value) {
                setState(() {
                  scale = 0.9;
                });
              } else {
                setState(() => scale = 1.0);
              }
            },
            child: Container(
              width: 130,
              height: 45,
              padding: EdgeInsets.all(8),
              alignment: Alignment.center,
              child: Text(
                widget.buttonText,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: textColor,
                    fontSize: 16),
              ),
            ),
          ),
        ),
      ),
      curve: Curves.easeInCubic,
      duration: Duration(seconds: 6),
    );
  }
}

class ButtonTag extends StatefulWidget {
  ButtonTag(
      {this.buttonText, this.backgroundColor, this.textColor, this.onTap});

  final String buttonText;
  final Color backgroundColor;
  final Color textColor;
  final Function onTap;

  @override
  _ButtonTagState createState() => _ButtonTagState();
}

class _ButtonTagState extends State<ButtonTag> {
  Color backgroundColor;
  Color textColor;

  @override
  void initState() {
    backgroundColor = widget.backgroundColor;
    textColor = widget.textColor;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(100),
      child: InkWell(
        borderRadius: BorderRadius.circular(100),
        onHover: (value) {
          if (value) {
            setState(() {
              backgroundColor = Colors.grey[300];
              textColor = Colors.black87;
            });
          } else {
            setState(() {
              backgroundColor = widget.backgroundColor;
              textColor = widget.textColor;
            });
          }
        },
        onTap: widget.onTap,
        child: Container(
          width: 150,
          height: 40,
          padding: EdgeInsets.all(8),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100), color: backgroundColor),
          child: Text(
            widget.buttonText,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.w600, color: textColor),
          ),
        ),
      ),
    );
  }
}
