import 'package:firstprojetflutter/pages/home_page.dart';
import 'package:firstprojetflutter/pages/project_page.dart';
import 'package:firstprojetflutter/pages/project_page_dynamic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _currentIndexPage = 0;

  updateCurrentIndexPage(int index) {
    setState(() {
      _currentIndexPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: [
              const Text('Profile'),
              const Text('Projects'),
              const Text('Education')
            ][_currentIndexPage],
            leading: Padding(
              padding: const EdgeInsets.only(left: 10.0), // Ajoutez l'espace souhaité à gauche
              child: SvgPicture.asset(
                "assets/images/logo.svg",
                color: Colors.white,
                width: 30,
                height: 30,
              ),
            ),
          ),
          body: [
            const HomePage(),
            const ProjectsPageDynamic(),
            const ProjectsPage()
          ][_currentIndexPage],
          bottomNavigationBar: BottomNavigationBar(
            items:const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: 'Projects',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'Education',
              ),
            ],
            currentIndex: _currentIndexPage,
            //selectedItemColor: Colors.amber[800],
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            //type: BottomNavigationBarType.shifting,
            elevation: 25,
            onTap: (index) => updateCurrentIndexPage(index),
          )
      ),
    );
  }
}

