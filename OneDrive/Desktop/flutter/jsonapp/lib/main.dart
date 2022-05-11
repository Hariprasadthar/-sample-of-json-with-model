import 'package:flutter/material.dart';

import 'homepge.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "this is json app",
      home: HomePge(),
    );
  }
}
