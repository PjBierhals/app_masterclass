import 'package:app_masterclass/components/app_bar.dart';
import 'package:app_masterclass/components/button_with_icon_number.dart';
import 'package:flutter/material.dart';

class AnimationsPage extends StatefulWidget {
  const AnimationsPage({Key? key}) : super(key: key);

  @override
  _AnimationsPageState createState() => _AnimationsPageState();
}

class _AnimationsPageState extends State<AnimationsPage> {
  List<String> push = ['Floatingbutton', 'Expansionpanellist'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        context: context,
        title: 'Animações',
      ),
      body: ListView.builder(
          itemCount: push.length,
          itemBuilder: (BuildContext context, int index) {
            var indexAux = index;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ButtonWithIconNumber(
                textButton: 'Exercícios: ${++indexAux}',
                onPressed: () => Navigator.pushNamed(context, push[index]),
                color: const Color(0xFF172026),
                textIcon: '$indexAux',
              ),
            );
          }),
    );
  }
}
