import 'package:flutter/material.dart';

import '../models/shoe.dart';

// ignore: must_be_immutable
class ShoeBox extends StatelessWidget {
  Shoe shoe;
  ShoeBox({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

        // image
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(shoe.imagePath,
          fit: BoxFit.cover,
          )),

        // description
        Text(
          shoe.description,
          style: TextStyle(color: Colors.grey[600]),
        ),
        // price
        Padding(
          
          padding: const EdgeInsets.only(left: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  shoe.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black
                  ),
                ),
                Text(
                  '\$${shoe.price}',
                  style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),
                ),
              ],
            ),
            // button to add to cart
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                )
              ),
              child: const Icon(Icons.add_shopping_cart_outlined,
              color: Colors.white,),
              )
        
          ],),
        )


        
      ]),
    );
  }
}
