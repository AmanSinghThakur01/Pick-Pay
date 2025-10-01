import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pick_n_pay/Screens/Cart_Screen.dart';
import 'package:pick_n_pay/Screens/Home_Screen.dart';
import 'package:pick_n_pay/Screens/Profile_Screen.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  //selected index for navigation
  int _selectedindex = 0;

  //set state to  view the  page we tapped on
  void bottomnavigation(index) {
    setState(() {
      _selectedindex = index;
    });
  }

  // all pages  list that we have in our App
  final List _pages = [HomeScreen(), CartScreen(), ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pick & Pay "),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.pushNamed(context, '/Searchpage');
            },
          ),
          SizedBox(width: 25),
          Icon(Icons.inbox),
          SizedBox(width: 25),
          Icon(Icons.notifications),
          SizedBox(width: 25),
        ],
      ),
      body: _pages[_selectedindex],bottomNavigationBar: Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15), // Ye line add karo
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
          child: GNav(
            onTabChange: bottomnavigation,
            backgroundColor: Colors.transparent, // Ye transparent kar do
            tabBorderRadius: 15,
            tabBackgroundColor: Colors.lightGreen.shade300,
            tabMargin: EdgeInsets.all(10),
            color: Colors.white,
            tabs: [
              GButton(icon: Icons.home, text: ' Home',padding: EdgeInsets.symmetric(horizontal: 18, vertical: 13),),
              GButton(icon: Icons.shopping_bag_outlined, text: 'Cart', padding: EdgeInsets.symmetric(horizontal: 18, vertical: 13),),
              GButton(icon: Icons.settings, text: ' Setting',padding: EdgeInsets.symmetric(horizontal: 18, vertical: 13),),
            ],
          ),
        ),
      ),
    ),
    );

  }
}