import 'package:firstprojetflutter/pages/contact_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Center(
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
                PageRouteBuilder(pageBuilder: (_, __, ___) => const ContactPage()),
              );
            },
            label: const Text("Contact me",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            icon: const Icon(Icons.contact_mail, size: 30),
          ),
          Padding(padding: EdgeInsets.only(top: 50)),
        ],
      ),
    );
  }
}