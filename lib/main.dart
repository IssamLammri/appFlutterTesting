import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Issam LAMMRI'),
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
            ],
          ),
        ),
      ),
    );
  }
}
