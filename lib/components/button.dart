import 'package:flutter/material.dart';

class ButtonPersonalized extends StatelessWidget {
  final String textButton;
  final Function() onPressed;
  final Color? color;

  const ButtonPersonalized({
    Key? key,
    required this.textButton,
    required this.onPressed, this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(textButton),
      style: ElevatedButton.styleFrom(
        primary: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
