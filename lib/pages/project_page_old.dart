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
        child: ListView(
          children: [
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.album),
                    title: Text('The Enchanted Nightingale'),
                    subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('BUY TICKETS'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text('LISTEN'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset("assets/images/livesessionlogo.jpg"),
                title: Text('Live Session'),
                subtitle: Text('Live Session is a platform for online courses and training1'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset("assets/images/jaccompagneicon.png"),
                title: Text('JACCOMPANE'),
                subtitle: Text('JACCOMPANE is a platform for accompaniment and support for children and young people'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset("assets/images/absiskey.jpg"),
                title: Text('Absiskey'),
                subtitle: Text('Absiskey is a consulting firm specializing in innovation and funding'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset("assets/images/cosys.png"),
                title: Text('COSYS'),
                subtitle: Text('COSYS is a company specializing in the design and manufacture of electronic systems'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
          ],
        ),
      ),
    );
  }
}