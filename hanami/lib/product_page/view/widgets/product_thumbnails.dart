
// import 'package:flutter/material.dart';

// class ProductThumbnails extends StatelessWidget {
//   final String imageUrl;

//   const ProductThumbnails({
//     Key? key,
//     required this.imageUrl,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: List.generate(
//         4,
//         (index) => Container(
//           width: 70,
//           height: 70,
//           margin: const EdgeInsets.only(bottom: 10, right: 10),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(8),
//             border: Border.all(color: Colors.grey.shade300),
//           ),
//           clipBehavior: Clip.hardEdge,
//           child: Image.network(
//             imageUrl,
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//     );
//   }
// }
