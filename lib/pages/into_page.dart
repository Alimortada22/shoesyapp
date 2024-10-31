import 'package:flutter/material.dart';
import 'package:sneaker_shop/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //logo
          Padding(
            padding: const EdgeInsets.all(25),
            child: Image.asset('lib/images/logo.png', height: 240),
          ),
          const SizedBox(
            height: 48,
          ),
          //title
          const Text(
            "Just Do it",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
          const SizedBox(
            height: 24,
          ),

          //subtitle
          const Text(
            "Brand new sneakers and custom kiks made with premium quality",
            style: TextStyle(color: Colors.grey, fontSize: 16),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 48,
          ),

          //start now button
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                )),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12)),
              padding: const EdgeInsetsDirectional.all(25),
              margin: const EdgeInsetsDirectional.all(15),
              child: const Center(
                  child: Text("Shop Now",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20))),
            ),
          )
        ],
      ),
    );
  }
}
