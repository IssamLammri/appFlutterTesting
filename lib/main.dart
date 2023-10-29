import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

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


class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Issam LAMMRI'),
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
            // SvgPicture.asset(
            //   "assets/images/logo.svg",
            //   color: Colors.blue,
            // ),
            Image.asset(
              "assets/images/issamR.png",
              width: 200,
              height: 200,
            ),
            // ClipOval(
            //   child: Image.asset(
            //     "assets/images/issam.png",
            //     width: 200,
            //     height: 200,
            //   ),
            // ),
            const Text(
                'Issam LAMMRI',
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
            ),
            Padding(padding: EdgeInsets.only(top: 50)),
            ElevatedButton.icon(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(25)),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  // MaterialPageRoute(builder: (context) => const EventsPage()),
                  PageRouteBuilder(pageBuilder: (_, __, ___) => const ProjectsPage()),
                );
              },
              label: const Text("Show Projects",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
              ),
              icon: const Icon(Icons.account_balance_wallet_outlined, size: 30),
            ),
          ],
        ),
      ),
    );
  }
}
