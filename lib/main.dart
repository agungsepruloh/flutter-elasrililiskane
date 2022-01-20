import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'material_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Elasri Lil Iskane',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: white),
      home: const MyHomePage(title: 'Elasri Lil Iskane'),
    );
  }
}

const String odooUrl = 'http://167.86.81.119:8069';

Future<void> launchOdoo() async {
  await launch(odooUrl);
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    launchOdoo();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => launchOdoo(),
              child: Image.asset(
                'assets/icons/splash.png',
                height: MediaQuery.of(context).size.height / 3.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
