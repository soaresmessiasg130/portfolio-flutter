import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final text;
  final onPressed;
  final Color color;

  const NavButton(
      {Key key,
      @required this.text,
      this.onPressed,
      this.color = Colors.deepPurpleAccent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: Text(text),
      onPressed: onPressed,
    );
  }
}
