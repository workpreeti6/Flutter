import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:justusnew/screen/detailsScreen1/components/drycleaning.dart';
import 'package:justusnew/screen/detailsScreen1/components/folding.dart';
import 'package:justusnew/style/color.dart';

import '../../dashboard/view/product.dart';
import '../components/ServiceIcons.dart';
import '../components/iron.dart';
import '../components/washing.dart';
import '../reviews/reviews.dart';

class Desc_Body extends StatelessWidget {
  final Product product;
  const Desc_Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 12),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(12),
                                  topLeft: Radius.circular(12)),
                              color: AppColor.blue,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  product.rating,
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      letterSpacing: 0.5),
                                ),
                                SizedBox(width: 1),
                                Icon(
                                  Icons.star,
                                  size: 12,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6.0, vertical: 6),
                            child: Column(
                              children: const <Widget>[
                                Text(
                                  "4.2k",
                                  style: TextStyle(
                                      fontSize: 11, letterSpacing: 0.5),
                                ),
                                Text(
                                  "Reviews",
                                  style: TextStyle(
                                      fontSize: 11,
                                      height: 1,
                                      letterSpacing: 0.5),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          product.address,
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                        Icon(
                          Icons.square,
                          color: Colors.grey,
                          size: 2.5,
                        ),
                        Text(
                          " ${product.distance} Km",
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                      ],
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(product.image),
                  backgroundColor: Colors.transparent,
                )
              ],
            ),
          ),
          Divider(
            thickness: 2,
            color: Colors.grey,
          ),
          Column(
            children: [
              Text(
                'Description'.toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  product.descriiption2,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              )
            ],
          ),
          if (product.iron ?? false) iron(),
          if (product.washing ?? false) washing(),
          if (product.drycleaning ?? false) dry_cleaning(),
          if (product.folding ?? false) Folding(),

          SizedBox(
            height: 20,
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text("Review"),
          //     GestureDetector(
          //       onTap: () => Navigator.of(context).push(
          //         MaterialPageRoute(
          //           builder: (context) => Reviews(key: null,),
          //         ),
          //       ),
          //       child: Padding(
          //         padding: const EdgeInsets.only(right: 8.0),
          //         child: Text(
          //           "data",
          //           style: TextStyle(color: Colors.blue),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
