import 'package:app_masterclass/pages/activites/activites_page.dart';
import 'package:app_masterclass/pages/repositories/repositories_page.dart';

import 'package:flutter/material.dart';

import '../about/about_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = const [
    ActivitesPage(),
    RepositoriesPage(),
    AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex), //New
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,

        backgroundColor: const Color(0xFF121517),
        fixedColor: Colors.white,
        //selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: const[
           BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/feather-target.png'),
              color: Colors.white,
              size: 40,
            ),
            label: 'Atividades',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/github.png'),
              color: Colors.white,
              size: 40,
            ),
            label: 'Repositório',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.white,
              size: 40,
            ),
            label: 'Sobre Dev',
          ),
        ],
      ),
    );
  }
}
