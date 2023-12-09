import 'package:flutter/material.dart';
import '../components/bottom_nav_bar.dart';
import 'cart_page.dart';
import 'drawer.dart';
import 'shop_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // index of the current page
  int _currentIndex = 0;

  // method to navigate to the selected page
  void navigateBottomBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  // page to display
  final List<Widget> _pages = [

    // shop page
    const ShopPage(),

    // cart page
    const CartPage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        
        onTapChange: (index) => navigateBottomBar(index), 
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu,
              color: Colors.black,
              ),
            );
          }
        ),
      ),
      drawer: DrawerPage(),
    

      body: _pages[_currentIndex],
    );
  }
}