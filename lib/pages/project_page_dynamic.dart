import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProjectsPageDynamic extends StatefulWidget {
  const ProjectsPageDynamic({super.key});

  @override
  State<ProjectsPageDynamic> createState() => _ProjectsPageDynamicState();
}

class _ProjectsPageDynamicState extends State<ProjectsPageDynamic> {

  final projects = [
    {
      'companyName': 'Live Session',
      'logo': 'livesessionlogo.jpg',
      'description': 'Live Session is a platform for online courses and training',
      'experience': 'Full Stack Developer'
    },
    {
      'companyName': 'JACCOMPANE',
      'logo': 'jaccompagneicon.png',
      'description': 'JACCOMPANE is a platform for accompaniment and support for children and young people',
      'experience': 'Full Stack Developer'
    },
    {
      'companyName': 'Absiskey',
      'logo': 'absiskey.jpg',
      'description': 'Absiskey is a consulting firm specializing in innovation and funding',
      'experience': 'Full Stack Developer'
    },
    {
      'companyName': 'COSYS',
      'logo': 'cosys.png',
      'description': 'COSYS is a company specializing in the design and manufacture of electronic systems',
      'experience': 'Full Stack Developer'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView.builder(
          itemCount: projects.length,
          itemBuilder: (context, index) {
            final project = projects[index];
            final logo = project['logo'];
            return Card(
              child: ListTile(
                leading: Image.asset("assets/images/$logo"),
                title: Text(project['companyName']!),
                subtitle: Text(project['description']!),
                trailing: Icon(Icons.more_vert),
              ),
            );
          },
        )
    );
  }
}
