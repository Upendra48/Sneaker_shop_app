import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTapChange;
  MyBottomNavBar({super.key,required this.onTapChange});

  @override
  Widget build(BuildContext context) {
    return GNav(
      
      color: Colors.grey.shade100,
      activeColor: Colors.blueGrey[900],
      tabActiveBorder: Border.all(color: Colors.grey.shade100,),
      tabBackgroundColor: Colors.grey.shade100,
      gap: 2,

      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      tabBorderRadius: 15,

      onTabChange: (value) => onTapChange!(value),

      tabs: const [
      GButton(
        iconSize: 22,
        icon: Icons.home,
        iconColor: Colors.blueGrey,
        text: 'Shop',
        ),
      GButton(
        iconSize: 22,
        icon: Icons.shopping_bag_rounded,
        iconColor: Colors.blueGrey,
        text: 'Cart',
        ),
    ]
    );
  }
}