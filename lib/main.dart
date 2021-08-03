import 'package:flutter/material.dart';
import 'package:real_estate_02/components/landing_page.dart';
import 'package:real_estate_02/components/nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Index(),
    );
  }
}

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromRGBO(195, 20, 50, 1.0),
            Color.fromRGBO(36, 11, 54, 1.0)
          ],
        )),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Navbar(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 60),
                child: LandingPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
