import 'package:flutter/material.dart';
import 'package:flutter_sample_app/injector.dart' as injector;
import 'package:flutter_sample_app/ui/home/home_page.dart';

import 'injector.dart';

Future<void> main() async {
  await injector.init();
  // Wait for async initialization of DI service
  get.allReady().then((value) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
