import 'package:flutter/material.dart';

class ButtonWithIcon extends StatelessWidget {
  final String textButton;
  final String pathIcon;
  final Function() onPressed;
  final Color? color;

  const ButtonWithIcon({
    Key? key,
    required this.textButton,
    required this.onPressed,
    this.color,
    required this.pathIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 30,
              child: ImageIcon(
                AssetImage(pathIcon),
                color: Colors.white,
                size: 24,
              ),
            ),
            const Spacer(),
           Text(
                  textButton,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
             const Spacer(),
          ],
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          elevation: 0,
          side: const BorderSide(color: Colors.white, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
