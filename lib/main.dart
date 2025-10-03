import 'package:flutter/material.dart';
import 'package:pick_n_pay/Screens/First_page.dart';
import 'package:pick_n_pay/Screens/Search_Screen.dart';
import 'package:provider/provider.dart';
import 'package:pick_n_pay/providers/cart_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
