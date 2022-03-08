import 'package:flutter/material.dart';

import '../../components/app_bar.dart';
import '../../components/card.dart';

class ActivitesPage extends StatefulWidget {
  const ActivitesPage({Key? key}) : super(key: key);

  @override
  _ActivitesPageState createState() => _ActivitesPageState();
}

class _ActivitesPageState extends State<ActivitesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        context: context,
        title: 'Atividades',
        leading: Image.asset('assets/images/logo.png'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              CardPers(
                context,
                textTitle: 'Animações',
                pathImagen: 'assets/icons/awesome-running.svg',
                textNumber: '4',
                textDescription:
                    'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos.',
                linkGit: () {},
                nextPage: () => Navigator.pushNamed(context, 'Animate'),
              ),
              CardPers(
                context,
                textTitle: 'Leitura de Mockup',
                pathImagen: 'assets/icons/awesome-glasses.svg',
                textNumber: '2',
                textDescription:
                    'Aplicação da técnica de leitura de mockup, contendo 2 exercícios.',
                linkGit: () {},
                nextPage: () => Navigator.pushNamed(context, 'Mockup'),
              ),
              CardPers(
                context,
                textTitle: 'Playground',
                pathImagen: 'assets/icons/material-toys.svg',
                textNumber: '3',
                textDescription:
                    'Ambiente destinado a testes e estudos em geral.',
                linkGit: () {},
                nextPage: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
