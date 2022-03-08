import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GetYourMoneyPage extends StatefulWidget {
  const GetYourMoneyPage({Key? key}) : super(key: key);

  @override
  _GetYourMoneyPageState createState() => _GetYourMoneyPageState();
}

class _GetYourMoneyPageState extends State<GetYourMoneyPage> {
  @override
  Widget build(BuildContext context) {
    Size tamanho = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const DesenhoLogo(),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Get your Money \n Under Control',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Manage your expenses. \n  Seamlessly.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white54,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: tamanho.height * 0.06,
                width: tamanho.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF5d46e2),
                ),
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign Up With Email ID',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      height: 1.5,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: tamanho.height * 0.06,
                width: tamanho.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFffffff),
                ),
                child: OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 27,
                        width: 27,
                        child: SvgPicture.asset('assets/icons/google.svg'),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        'Sign Up With Google',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        height: 1.5,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        ' Sign In',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DesenhoLogo extends StatelessWidget {
  const DesenhoLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF5d46e2),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                  bottomStart: Radius.circular(90),
                ),
                color: Color(0xFF5d46e2),
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          width: 50,
          height: 105,
          decoration: const BoxDecoration(
            borderRadius: BorderRadiusDirectional.only(
                bottomStart: Radius.circular(90), topEnd: Radius.circular(90)),
            color: Color(0xFF5d46e2),
          ),
        ),
      ],
    );
  }
}
