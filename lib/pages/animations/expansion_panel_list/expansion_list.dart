import 'package:flutter/material.dart';

import '../../../components/list_card.dart';

class ExpansionList extends StatefulWidget {
  const ExpansionList({
    Key? key,
    required this.textNumber,
  }) : super(key: key);
  final String textNumber;
  @override
  State<ExpansionList> createState() => _ExpansionListState();
}

class _ExpansionListState extends State<ExpansionList> {
  final duration = const Duration(seconds: 1);
  bool isClick = true;
  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30,
          width: double.maxFinite,
          color: const Color(0xFF172026),
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 8),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                  ),
                  child: Text(
                    widget.textNumber,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
                const Spacer(),
                AnimatedRotation(
                  duration: duration,
                  turns: isClick ? turns -= 1.0 / 2.0 : turns += 1.0 / 2.0,
                  child: IconButton(
                    icon: const ImageIcon(
                      AssetImage('assets/icons/down-expand.png'),
                      color: Colors.white,
                      size: 24,
                    ),
                    onPressed: () {
                      setState(() {
                        isClick = !isClick;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: double.maxFinite,
          color: const Color(0xFF172026),
          child: ClipRRect(
            child: AnimatedAlign(
              heightFactor: isClick ? 0 : 1,
              duration: duration,
              alignment: Alignment.centerLeft,
              child: AnimatedContainer(
                duration: duration,
                width: double.maxFinite,
                child: ListCardPers(
                  context,
                  pathImagen: 'assets/images/logo.png',
                  textNumber: 'textNumber',
                  textDescription:
                      'Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
