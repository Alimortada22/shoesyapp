import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class MyButtonNavbar extends StatelessWidget {
   MyButtonNavbar({super.key,required this.onTabChange});
void Function(int)? onTabChange;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 15),
      child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        tabBorderRadius: 16,
        onTabChange:onTabChange ,
        mainAxisAlignment: MainAxisAlignment.center,
        tabs: const [
        GButton(
          icon: Icons.home,
          text: " shop",
        ),
        GButton(
          icon: Icons.shopping_bag_rounded,
          text: " cart",
        ),
      
       
      ]),
    );
  }
}
