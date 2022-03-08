import 'package:flutter/material.dart';

class ListCardPers extends StatelessWidget {
  const ListCardPers(
    BuildContext context, {
    Key? key,
    required this.pathImagen,
    required this.textNumber,
    required this.textDescription,
  }) : super(key: key);
  final String pathImagen;

  final String textNumber;
  final String textDescription;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: const Color(0xFF172026),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10.0,
          right: 10.0,
        ),
        child: Column(
          children: [
            ListTile(
              title: Center(
                child: SizedBox(
                    height: 30, width: 30, child: Image.asset(pathImagen)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                textDescription,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
