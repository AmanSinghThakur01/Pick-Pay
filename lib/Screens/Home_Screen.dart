import 'package:flutter/material.dart';
import 'package:pick_n_pay/Screens/Products_showed.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(18),
                margin: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: const LinearGradient(
                    colors: [Colors.purple, Colors.pink],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                ),
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Super Sale! 🎉",
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Up to 70% off on trending items",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    const SizedBox(height: 10),
                    TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text("Sale Alert!"),
                              content: const Text("We will Notify You Whenever the sale is live"),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text("Ok"),
                                )
                              ],
                            );
                          },
                        );
                      },
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        foregroundColor: Colors.blue,
                        backgroundColor: Colors.white,
                      ),
                      child: const Text(
                        "Shop Now",
                        style: TextStyle(fontSize: 18),
                      ),
                    )
                  ],
                ),
              ),
              //  const SizedBox(height: 20),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6, // Fixed height for grid
                child: ProductsShowed(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}