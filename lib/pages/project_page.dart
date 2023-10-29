import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects Professional'),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Projects Professional',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
                color: Colors.blue,
              ),
            ),
            const Text(
              'Full Stack Developer at Live Session company',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.blue,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}