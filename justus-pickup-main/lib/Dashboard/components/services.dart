

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:justuspickup/style/color.dart';


// class Services extends StatelessWidget {
//   Services({Key? key}) : super(key: key);

//   List<String> optiondata = ["Washing", "Ironing", "Dry Cleaning", "Folding"];
//   List<String> optionimage = ["assets/images/washing.svg", "assets/images/iron.svg", "assets/images/basket.svg", "assets/images/knitting.svg"];


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
     
//       body: 
      
//       Padding(
//         padding: const EdgeInsets.only(left:10.0 ,right:10,top: 40),
//         child: Column(
//           children: [
//             Container(
//               alignment: Alignment.topCenter,
//               child: Column(
//                 // crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Text(
//                     "sevicies".toUpperCase(),
//                     style: GoogleFonts.varelaRound(
//                         fontSize: 30, color: AppColor.blue),
//                   ),
                  
//                   ListView.builder(
//                     padding: const EdgeInsets.only(left:10.0 ,right:10,top: 50),
//                     shrinkWrap: true,
//                     itemCount: 4,
//                     itemBuilder: (context, int index) => Options(
//                       title: optiondata[index],
//                       image: optionimage[index],
//                     ),
//                   ),
                
//                 ],
//               ),
//             ),
            
//           ],
//         ),
        
//       ),
      
//     );
//   }
// }
