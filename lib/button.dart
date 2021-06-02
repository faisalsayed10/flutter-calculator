import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color? color;
  final void Function()? onPressed;

  Button({this.text = "", this.color, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MaterialButton(
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
        ),
        color: color,
      ),
    );
  }
}
