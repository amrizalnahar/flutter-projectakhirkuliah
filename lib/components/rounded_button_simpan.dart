import 'package:flutter/material.dart';
import 'package:mampir_foto/constants.dart';

class RoundedButtonSimpan extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButtonSimpan({
    Key key,
    this.text,
    this.press,
    this.color = kSimpanColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.5,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.green, // background
            onPrimary: Colors.white, // foreground
          ),
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
