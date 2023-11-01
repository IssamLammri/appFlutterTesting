import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:date_field/date_field.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {

  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();

  final selectedCompany = <String, dynamic>{}; // <String, dynamic>{};
  DateTime selectedDate = DateTime.now();

  @override
  void dispose() {
    super.dispose();

    nameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    messageController.dispose();
  }

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Me'),
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
      body: Container(
        margin: const EdgeInsets.all(24.0),
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'What do people call you?',
                      labelText: 'Name *',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                    controller: nameController,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.phone),
                      hintText: 'Where can we reach you?',
                      labelText: 'Phone Number *',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your phone number';
                      }
                      return null;
                    },
                    controller: phoneController,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.email),
                      hintText: 'Where can we reach you?',
                      labelText: 'Email *',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                    controller: emailController,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  child: DropdownButtonFormField(
                      items: projects.map((project) {
                        return DropdownMenuItem(
                          value: project,
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/${project['logo']}',
                                width: 30,
                                height: 30,
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 10.0),
                                child: Text(project['companyName']!),
                              )
                            ],
                          ),
                        );
                      }).toList(),
                      value: projects[0],
                      decoration: const InputDecoration(
                        icon: Icon(Icons.business),
                        hintText: 'Where can we reach you?',
                        labelText: 'Company *',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        setState(() {
                          selectedCompany.clear();
                          selectedCompany.addAll(value as Map<String, dynamic>);
                        });
                        print(value);
                      },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  child: DateTimeFormField(
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(color: Colors.black45),
                      errorStyle: TextStyle(color: Colors.redAccent),
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.event_note),
                      labelText: 'Only time',
                      icon: Icon(Icons.event_note),
                      hintText: 'Where can we reach you?',
                    ),
                    mode: DateTimeFieldPickerMode.dateAndTime,
                    autovalidateMode: AutovalidateMode.always,
                    validator: (e) => (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                    onDateSelected: (DateTime value) {
                      setState(() {
                        selectedDate = value;
                      });
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.message),
                      hintText: 'What do people call you?',
                      labelText: 'Message *',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    controller: messageController,
                  ),
                ),
               // SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      // Validate returns true if the form is valid, or false otherwise.
                       if (_formKey.currentState!.validate()) {
                         final name = nameController.text;
                          final phone = phoneController.text;
                          final email = emailController.text;
                          final message = messageController.text;
                          final company = selectedCompany['companyName'];
                          final date = selectedDate;

                          print('Name: $name');
                          print('Phone: $phone');
                          print('Email: $email');
                          print('Message: $message');
                          print('Company: $company');
                          print('Date: $date');


                      //   // If the form is valid, display a snackbar. In the real world,
                      //   // you'd often call a server or save the information in a database.
                         ScaffoldMessenger.of(context).showSnackBar(
                             const SnackBar(content: Text('Processing Data'))
                         );
                      //       .showSnackBar(SnackBar(content: Text('Processing Data')));
                       }
                       FocusScope.of(context).requestFocus(FocusNode());
                    },
                    child: const Text('Submit'),
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}
