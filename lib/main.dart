import 'package:app_masterclass/pages/about/about_page.dart';
import 'package:app_masterclass/pages/activites/activites_page.dart';
import 'package:app_masterclass/pages/animations/expansion_panel_list/expansion_panel_list.dart';
import 'package:flutter/material.dart';
import 'pages/animations/animations_page.dart';
import 'pages/animations/floating_button/floating_button.dart';
import 'pages/home/home_page.dart';
import 'pages/mockups/mockups_page.dart';
import 'pages/mockups/getYourMoney/get_your_money_page.dart';
import 'pages/mockups/replicateTinder/replicate_tinder_page.dart';
import 'pages/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Desafio App Masterclass',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          primarySwatch: Colors.blue,
          primaryColor: const Color(0xFF055AA3),
          textTheme: const TextTheme(
            headline1: TextStyle(
                fontSize: 20,
                fontFamily: 'Poppins',
                color: Colors.white,
                fontWeight: FontWeight.w600),
            headline2: TextStyle(
              fontSize: 16,
              fontFamily: 'Poppins',
              color: Colors.white,
              
            ),
            bodyText1: TextStyle(
              fontSize: 14,
              fontFamily: 'Montserrat',
              color: Color(0xFF51565A),
              fontWeight: FontWeight.normal,
            ),
            bodyText2: TextStyle(
              fontSize: 12,
              fontFamily: 'Montserrat',
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashPage(),
          'Home': (context) => const HomePage(),
          'Activites': (context) => const ActivitesPage(),
          'Repositories': (context) => const ReplicateTinderPage(),
          'About': (context) => const AboutPage(),
          'Animate': (context) => const AnimationsPage(),
          'Mockup': (context) => const MockupsPage(),
          'Getyourmoney': (context) => const GetYourMoneyPage(),
          'Replicatetinder': (context) => const ReplicateTinderPage(),
          'Floatingbutton': (context) => const FloatingButtonPage(),
          'Expansionpanellist':(context) => const ExpansionPanelListPage(),
        });
  }
}
