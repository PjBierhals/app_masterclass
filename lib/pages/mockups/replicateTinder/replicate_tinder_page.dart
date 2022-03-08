import 'package:app_masterclass/components/button_with_icon.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ReplicateTinderPage extends StatefulWidget {
  const ReplicateTinderPage({Key? key}) : super(key: key);

  @override
  _ReplicateTinderPageState createState() => _ReplicateTinderPageState();
}

class _ReplicateTinderPageState extends State<ReplicateTinderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () => Navigator.of(context).pop(false),
            );
          },
        ),
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          fundoGradiente(),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset('assets/images/logoTinder.png'),
                  const SizedBox(
                    height: 25,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text:
                                'By tapping Create Account or Sign In,you agree to our ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: 'Terms',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                          const TextSpan(
                            text: '. Learn how we process your data in our',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ' Privacy Policy',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                          const TextSpan(
                            text: ' and',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ' Cookies Policy',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                  //const SizedBox(height: 25),
                  ButtonWithIcon(
                      textButton: 'APPLE',
                      onPressed: () {},
                      pathIcon: 'assets/icons/icon-apple.png'),
                  const SizedBox(height: 10),
                  ButtonWithIcon(
                    textButton: 'FACEBOOK',
                    onPressed: () {},
                    pathIcon: 'assets/icons/icon-facebook.png',
                  ),
                  const SizedBox(height: 10),
                  ButtonWithIcon(
                      textButton: 'PHONE NUMBER',
                      onPressed: () {},
                      pathIcon: 'assets/icons/icon-conversation-balloon.png'),
                  const SizedBox(height: 20),
                  const Text(
                    'Trouble Signing In?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container fundoGradiente() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xFFFe725b), Color(0xFFfd0985)],
            begin: FractionalOffset.topRight,
            end: FractionalOffset.bottomLeft,
            stops: [0.2, 0.8],
            tileMode: TileMode.clamp),
      ),
    );
  }
}
