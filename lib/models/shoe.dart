class Shoe {
  final String name;
  final String price;
  final String description;
  final String imagePath;

  Shoe(
      {required this.name,
      required this.price,
      required this.description,
      required this.imagePath});
}

// add a list of shoes
// List<Shoe> shoes = [
//   Shoe(
//     name: 'Nike Air Max 270',
//     price: '\$120',
//     imagePath: 'lib/images/shoe1.png',
//     description:
//         'The Nike Air Max 270 is inspired by two icons of big Air: the Air Max 180 and Air Max 93. It features Nike’s biggest heel Air unit yet for a super-soft ride that feels as impossible as it looks.',
//   ),
//   Shoe(
//     name: 'Nike Air Max 270',
//     price: '\$120',
//     imagePath: 'lib/images/shoe2.png',
//     description:
//         'The Nike Air Max 270 is inspired by two icons of big Air: the Air Max 180 and Air Max 93. It features Nike’s biggest heel Air unit yet for a super-soft ride that feels as impossible as it looks.',
//   ),
//   Shoe(
//     name: 'Nike Air Max 270',
//     price: '\$120',
//     imagePath: 'lib/images/shoe3.png',
//     description:
//         'The Nike Air Max 270 is inspired by two icons of big Air: the Air Max 180 and Air Max 93. It features Nike’s biggest heel Air unit yet for a super-soft ride that feels as impossible as it looks.',
//   ),
//   Shoe(
//     name: 'Nike Air Max 270',
//     price: '\$120',
//     imagePath: 'lib/images/shoe4.png',
//     description:
//         'The Nike Air Max 270 is inspired by two icons of big Air: the Air Max 180 and Air Max 93. It features Nike’s biggest heel Air unit yet for a super-soft ride that feels as impossible as it looks.',
//   ),

// ];

Shoe shoe = Shoe(
    name: 'Nike Air Max 270',
    price: '120',
    description: 'The Nike Air Max',
    imagePath: 'lib/images/shoe1.png'
);
