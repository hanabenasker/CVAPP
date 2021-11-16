// ignore_for_file: prefer_const_constructors

import 'package:cvapp/Experience.dart';
import 'package:cvapp/Personne.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'CV APP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Experience> experiences = [];
  List<String> skills = [];

  Personne person = Personne(
    name: 'HANA BEN ASKER',
    phone: '50348968',
    email: 'hana.benasker@insatucar.tn',
    profilDescription:
        'Je suis spécialiste en ressources humaines avec plus de 5 ans d\'expérience dans le recuretement, la mise en oeuvre de programmes, les systèmes techniques et l\'analytique du personnel.',
  );

  _MyHomePageState() {
    experiences = [
      Experience(
          title: 'Directrice générale des RH',
          date: '5 MARS 2018 A PRESENT',
          description:
              'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborumnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium'),
      Experience(
          title: 'Généraliste en RH',
          date: 'FEVRIER 2015 - MARS 2018',
          description:
              'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborumnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium'),
      Experience(
          title: 'Généraliste en RH',
          date: 'FEVRIER 2015 - MARS 2018',
          description:
              'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborumnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium'),
    ];
    skills = [
      'Formation et dévéloppement des employés',
      'Meilleures pratiques de recrutement',
      'PNL',
      'Agile Scrum'
    ];

    person.setExperiences(experiences);
    person.setSkills(skills);
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    print(person.name);
    String name = person.name;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: SingleChildScrollView(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        padding: EdgeInsets.all(20.0),
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).

          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      person.name,
                      style: TextStyle(
                          height: 2.0,
                          fontFamily: 'Raleway',
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo),
                    ),
                    Text(
                      'Téléphone: ' + person.phone,
                      style: TextStyle(height: 2.0),
                    ),
                    Text(
                      'E-mail: ' + person.email,
                      style: TextStyle(height: 2.0),
                    )
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(90.0),
                  child: Image.asset(
                    'assets/img/me.jpg',
                    width: 80.0,
                    fit: BoxFit.fill,
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'PROFIL',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0, left: 12.0),
                    child: Text(
                      person.profilDescription,
                      style: TextStyle(
                          height: 1.5,
                          fontStyle: FontStyle.italic,
                          fontSize: 15.0),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'COMPETENCES PRINCIPALES',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12.0),
                  ),
                  ...person.skills.map((skill) => Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '   - ' + skill,
                            style: TextStyle(height: 1.5),
                          ),
                        ],
                      ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'EXPERIENCES PROFESSIONNELLES',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo),
                  ),
                  ...person.experiences.map(
                    (e) => Container(
                        margin: EdgeInsets.only(top: 10.0, left: 12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(e.title,
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.indigo)),
                            Text(e.date,
                                style: TextStyle(
                                    height: 1.5,
                                    fontFamily: 'Raleway',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.indigo)),
                            Text(
                              e.description,
                              style: TextStyle(
                                height: 1.5,
                              ),
                            )
                          ],
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
