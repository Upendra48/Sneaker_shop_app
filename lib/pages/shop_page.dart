import 'package:flutter/material.dart';

import '../components/shoe_box.dart';
import '../models/shoe.dart';
class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // search bar
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child:
              const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Icon(Icons.search),
            SizedBox(width: 10),
            Text('Search'),
          ]),
        ),
        // message
        const SizedBox(height: 10),

        // list of sneakers
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'This weeks releases',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'See all',
                style: TextStyle(color: Colors.blueGrey),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),

        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            
            itemBuilder: (context, index) {

          //create a shoe
            

          return ShoeBox(
            shoe: shoe,
          
          );
        })),
      ],
    );
  }
}
