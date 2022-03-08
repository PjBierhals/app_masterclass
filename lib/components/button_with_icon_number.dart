import 'package:flutter/material.dart';

class ButtonWithIconNumber extends StatelessWidget {
  final String textButton;
  final String textIcon;
  final Function() onPressed;
  final Color? color;

  const ButtonWithIconNumber({
    Key? key,
    required this.textButton,
    required this.onPressed,
    this.color,
    required this.textIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 33,
                  height: 33,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF055AA3),
                  ),
                ),
                Text(textIcon),
              ],
            ),
            const Spacer(),
            Center(
              child: Text(
                textButton,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}