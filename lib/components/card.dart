import 'package:app_masterclass/components/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardPers extends StatelessWidget {
  const CardPers(
    BuildContext context, {
    Key? key,
    required this.pathImagen,
    required this.textTitle,
    required this.textNumber,
    required this.textDescription,
    required this.linkGit,
    required this.nextPage,
  }) : super(key: key);
  final String pathImagen;
  final String textTitle;
  final String textNumber;
  final String textDescription;
  final Function() linkGit;
  final Function() nextPage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        clipBehavior: Clip.antiAlias,
        color: const Color(0xFF172026),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
            right: 10.0,
          ),
          child: Column(
            children: [
              ListTile(
                leading: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF055AA3),
                      ),
                    ),
                    SvgPicture.asset(pathImagen),
                  ],
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      textTitle,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    Row(
                      children: [
                        Text(
                          'Exercicios: ',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text(textNumber,
                            style: Theme.of(context).textTheme.bodyText2),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  textDescription,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    icon: SvgPicture.asset('assets/icons/awesome-github.svg'),
                    onPressed: linkGit,
                    label: Text(
                      'Acessar código fonte.',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                  ButtonPersonalized(textButton:'Ver Mais' , onPressed: nextPage, color: Theme.of(context).primaryColor,)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
