import 'package:flutter/material.dart';
import 'package:pick_n_pay/Screens/First_page.dart';
import 'package:pick_n_pay/Screens/Search_Screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Pick&Pay - Ecommerce App ',
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage': (context)=> FirstPage(),
        '/Searchpage':(context)=> SearchScreen(),
      },
    );
  }
}