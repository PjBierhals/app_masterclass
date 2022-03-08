import 'package:app_masterclass/components/app_bar.dart';
import 'package:flutter/material.dart';

class RepositoriesPage extends StatefulWidget {
  const RepositoriesPage({Key? key}) : super(key: key);

  @override
  _RepositoriesPageState createState() => _RepositoriesPageState();
}

class _RepositoriesPageState extends State<RepositoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        context: context,
        title: 'Repositórios',
        leading: Image.asset('assets/images/logo.png'),
      ),
    );
  }
}
