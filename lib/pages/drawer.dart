import 'package:flutter/material.dart ';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[700],
      child: Column(
        children: [
          // logo
          DrawerHeader(
              child: Image.asset(
            'lib/images/logo.png',
            color: Colors.white,
          )),

          // divider
          const Divider(
            color: Colors.grey,
            thickness: 1.0,
          ),
          // other pages
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.info,
                color: Colors.white,
              ),
              title: Text(
                'About',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              title: Text(
                'Logout',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
