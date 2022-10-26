import 'package:flutter/material.dart';

import 'package:flutter_api_proje/constants.dart';

import 'pages/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants().title,
      theme: ThemeData.dark().copyWith(
          backgroundColor: Colors.red,
          appBarTheme: AppBarTheme(
              centerTitle: true,
              backgroundColor: Colors.transparent.withOpacity(0.5),
              elevation: 5)),
      home: const MyHomePage(),
    );
  }
}
