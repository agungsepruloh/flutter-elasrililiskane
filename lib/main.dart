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

const String odooUrl = 'https://demo.odoo.com/';

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
      backgroundColor: Colors.white,
      body: Center(
        child: InkWell(
          onTap: () => launchOdoo(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text('Open in Browser'),
              SizedBox(width: 8),
              Icon(Icons.open_in_new),
            ],
          ),
        ),
      ),
    );
  }
}
