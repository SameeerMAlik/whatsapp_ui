import 'package:flutter/material.dart';
import 'package:whatsapp_ui/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
primarySwatch: Colors.teal
      ),
      initialRoute: HomePage.id,
      routes: {
        HomePage.id : (context) => HomePage()
      },

    );
  }
}

