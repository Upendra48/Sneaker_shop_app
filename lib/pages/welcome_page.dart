import 'package:flutter/material.dart';
import 'package:sneaker_shop/pages/home_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            // logo
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                'lib/images/logo.png',
                height: 200.0,
              ),
            ),

            const SizedBox(height: 10),

            // title
            const Text(
              'Impossible Is Nothing',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 20),

            // subtitle
            // title
            Text(
              'Our award-winning product innovations constantly strive to support athletes aiming to achieve ever better levels of performance',
              style: TextStyle(
                fontSize: 13.0,
                color: Colors.grey[800],
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 40),
            // button to enter the app
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  HomePage(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.all(25.0),
                child: const Center(
                  child: Text(
                    'Shop Now',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
