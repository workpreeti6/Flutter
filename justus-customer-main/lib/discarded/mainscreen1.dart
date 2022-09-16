// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:justusnew/screen/dashboard/view/item_card.dart';
// import 'package:justusnew/screen/dashboard/view/product.dart';

// class MyScreen1 extends StatelessWidget {
//   const MyScreen1({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Image.asset('assets/images/logo.png', height: 10),
//         actions: [
//           IconButton(
//             padding:
//                 EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.2),
//             icon: Icon(Icons.notifications_none),
//             onPressed: () {},
//           ),
//         ],
//         leading: IconButton(
//           icon: Icon(Icons.account_circle),
//           onPressed: () {},
//         ),
//         backgroundColor: Colors.white,
//         foregroundColor: Colors.black,
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Row(
//             children: [
//               Container(
//                 width: MediaQuery.of(context).size.width * 0.8,
//                 alignment: Alignment.topCenter,
//                 decoration: BoxDecoration(
//                   color: Color.fromARGB(255, 238, 238, 238),
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: TextField(
//                   onChanged: (value) {},
//                   decoration: InputDecoration(
//                       enabledBorder: InputBorder.none,
//                       focusedBorder: InputBorder.none,
//                       hintText: 'Search',
//                       prefixIcon: Icon(Icons.search),
//                       contentPadding:
//                           EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
//                 ),
//               ),
//             ],
//           ),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 5),
//               child: GridView.builder(
//                 itemCount: products.length,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   childAspectRatio: 0.75,
//                   mainAxisSpacing: 2,
//                   crossAxisSpacing: 2,
//                 ),
//                 itemBuilder: (context, index) => Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: ItemCard(product: products[index]),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//       bottomNavigationBar: CurvedNavigationBar(
//         backgroundColor: Color.fromARGB(255, 205, 169, 222),
//         items: <Widget>[
//           Icon(Icons.add, size: 30),
//           Icon(Icons.list, size: 30),
//           Icon(Icons.compare_arrows, size: 30),
//         ],
//         onTap: (index) {
//           //Handle button tap
//         },
//       ),
//     );
//   }
// }
