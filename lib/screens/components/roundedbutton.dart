import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final void Function()? press;
  final Color color, textColor, border;
  const RoundedButton(
      {Key? key,
      required this.text,
      required this.press,
      required this.color,
      required this.textColor,
      required this.border})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.7,
      decoration: BoxDecoration(
          color: color,
          border: Border.all(
            color: border,
            width: 1,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: newElevatedButton(),
      ),
    );
  }

  //Used:ElevatedButton as FlatButton is deprecated.
  //Here we have to apply customizations to Button by inheriting the styleFrom

  Widget newElevatedButton() {
    return ElevatedButton(
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
        ),
      ),
      onPressed: press,
      style: ElevatedButton.styleFrom(
          primary: color,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          textStyle: TextStyle(
              color: textColor, fontSize: 12, fontWeight: FontWeight.w600)),
    );
  }
}
