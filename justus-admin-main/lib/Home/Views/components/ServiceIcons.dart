import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';



class ServiceIcon extends StatelessWidget {
  ServiceIcon({
    Key? key,
    required this.iconAsset,
    // required this.price,
    required this.title,
  }) : super(key: key);

  String iconAsset;
  String title;
  // String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 20,
        ),
        Image.asset(
          iconAsset,
          height: 40,
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
                  height: 8,
                ),
                // Text(
                //   price,
                //   style: TextStyle(fontSize: 12),
                // ),
          ],
        ),
        Spacer(),
        Text("₹  ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w300),),
       Container(
        height: 40,
        width: 65,
        child: TextField( 
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Price',  
                      hintText: 'Rs-',  
                    ),  ),
       ),
        SizedBox(width: 20,)
      ],
    );
  }
}
