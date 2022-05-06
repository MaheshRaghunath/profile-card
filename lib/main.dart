import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> ProfileDetails = {
      'name': 'Mahesh Reghunathan',
      'age': 37,
      'jobTitle': 'Flutter Developer',
      'jobPrifix': 'Senior',
      'prifix': 'Mr.',
      'email': 'maheshrpm7@gmail.com',
      'phone': '+44 7879859966',
      'appHeader': 'Profile',
      'url': 'images/mahesh.jpeg',
      'about':
          'I have 10+ years of experience in Full-stack application Development Using Flutter, PHP, Perl, MySQL, NodeJS, HTML5, CSS3, SCSS, Angular JS, and JavaScript. I have worked on various projects like an eCommerce web application, CRMs application, Gmail Add-ons, and CRM Chrome Add-ons.'
    };
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade50,
        appBar: AppBar(
          backgroundColor: Colors.cyan[900],
          title: Text(
            ProfileDetails['appHeader'],
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Stack(
                alignment: const Alignment(0, 2),
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 12.0,
                      ),
                      height: 150.0,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15.0)),
                        color: Colors.cyan.shade800,
                        image: DecorationImage(
                            image: AssetImage('images/bg.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage(ProfileDetails['url']),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 45.0, bottom: 20.0),
                //color: Colors.yellow,
                width: double.infinity,
                child: Text(
                  ProfileDetails['name'],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.cyan[900],
                  ),
                  title: Text(ProfileDetails['jobPrifix'] +
                      '  ' +
                      ProfileDetails['jobTitle']),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 7.0,
                  horizontal: 20,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.cyan[900],
                  ),
                  title: Text(ProfileDetails['phone']),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.cyan[900],
                  ),
                  title: Text(ProfileDetails['email']),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  child: ListTile(
                    title: Text(
                      ProfileDetails['about'],
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        wordSpacing: 3,
                        fontSize: 16.5,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
