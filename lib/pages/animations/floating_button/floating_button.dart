import 'package:app_masterclass/components/app_bar.dart';
import 'package:flutter/material.dart';

class FloatingButtonPage extends StatefulWidget {
  const FloatingButtonPage({Key? key}) : super(key: key);

  @override
  _FloatingButtonPageState createState() => _FloatingButtonPageState();
}

class _FloatingButtonPageState extends State<FloatingButtonPage> {
  bool isClick = false;
  final duration = const Duration(seconds: 6);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBarCustom(context: context, title: 'Desafio do Botão Flutuante'),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: AnimatedAlign(
          duration: duration,
          alignment: isClick ? Alignment.topCenter : Alignment.bottomRight,
          child: GestureDetector(
            onTap: (() {
              setState(() {
                isClick = !isClick;
              });
            }),
            child: AnimatedContainer(
              duration: duration,
              width: isClick ? 250 : 100,
              height: isClick ? 100 : 100,
              decoration: BoxDecoration(
                borderRadius: isClick
                    ? BorderRadius.circular(2)
                    : BorderRadius.circular(90),
                color: Colors.blue,
              ),
              child: isClick ? text() : image(),
            ),
          ),
        ),
      ),
    );
  }

  image() {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
                'https://pbs.twimg.com/profile_images/1350144832350597124/pZ5ykSgo_400x400.jpg'),
          ),
        ),
      ),
    );
  }

  text() {
    return const Center(
      child: Text(
        'Flutter',
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
