import 'package:flutter/material.dart';

import '../../../components/app_bar.dart';
import 'expansion_list.dart';

class ExpansionPanelListPage extends StatefulWidget {
  const ExpansionPanelListPage({Key? key}) : super(key: key);

  @override
  _ExpansionPanelListPageState createState() => _ExpansionPanelListPageState();
}

class _ExpansionPanelListPageState extends State<ExpansionPanelListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(context: context, title: 'Recriar ExpansionTile'),
      body: ListView.builder(
          itemCount: 45,
          itemBuilder: (context, index) {
            return ExpansionList(
              textNumber: 'My Expansion Title  ${++index}',
            );
          }),
    );
  }
}
