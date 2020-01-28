import 'package:flutter/material.dart';
import 'package:qr_reader_custom/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: 'home',
      routes: getApplicationRoutes(),
      theme: ThemeData(
        primaryColor: Colors.deepPurple
      )
    );
  }
}