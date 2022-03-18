import 'package:app_masterclass/components/app_bar.dart';

import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        context: context,
        title: 'Sobre o dev',
        leading: Image.asset('assets/images/logo.png'),
      ),
      body: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: const Color(0xFF172026),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/68884037?v=4'),
                    foregroundColor: Colors.transparent,
                  ),
                  const Text('Nome'),
                  const Text('Descrição'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/ionic-logo-whatsapp.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset('assets/icons/awesome-github-alt.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset('assets/icons/awesome-instagram.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset('assets/icons/awesome-facebook.png'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Text('Tecnologias Favoritas'),
          SizedBox(
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  //var indexAux = index;
                  return SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: const Color(0xFF172026),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(padding: EdgeInsets.all(5)),
                              Image.asset('assets/images/simple-flutter.png'),
                              const Text("Flutter"),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          const Text('Habilidades e Competências'),
        ],
      ),
    );
  }
}
