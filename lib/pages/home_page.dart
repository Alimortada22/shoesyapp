import 'package:flutter/material.dart';
import 'package:sneaker_shop/components/my_button_navbar.dart';
import 'package:sneaker_shop/components/mydrawer.dart';
import 'package:sneaker_shop/pages/cart_page.dart';
import 'package:sneaker_shop/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedindex = 0;
  void updateselectedindex(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  List<Widget> pages = const [
    ShopPage(),
    CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu))),
      ),
      drawer: const MyDrawer(),
      body: pages[_selectedindex],
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyButtonNavbar(
        onTabChange: updateselectedindex,
      ),
    );
  }
}
