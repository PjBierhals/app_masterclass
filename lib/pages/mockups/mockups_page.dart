import 'package:app_masterclass/components/app_bar.dart';
import 'package:flutter/material.dart';

import '../../components/button_with_icon_number.dart';

class MockupsPage extends StatefulWidget {
  const MockupsPage({Key? key}) : super(key: key);

  @override
  _MockupsPageState createState() => _MockupsPageState();
}

class _MockupsPageState extends State<MockupsPage> {
  List<String> push = ['Getyourmoney', 'Replicatetinder','Cpf'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(context: context, title: 'Leitura de Mockup'),
      body: ListView.builder(
          itemCount: push.length,
          itemBuilder: (BuildContext context, int index) {
            var indexAux = index;
            return Padding(
               padding: const EdgeInsets.all(8.0),
              child: ButtonWithIconNumber(
                textButton: 'MockUp: ${++indexAux}',
                onPressed: () => Navigator.pushNamed(context, push[index]),
                color: const Color(0xFF172026),
                textIcon: '$indexAux',
              ),
            );
          }),
    );
  }
}
