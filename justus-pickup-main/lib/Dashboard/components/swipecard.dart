import 'package:flutter/material.dart';


class Swipe_Cards extends StatelessWidget {
  const Swipe_Cards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: (20)),
          // child: sectiontitle(
          //   title: "Special for you",
          //   press: () {},
          // ),
        ),
        SizedBox(height: (20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/images/board2.png",
                // category: "Washing",
                numofven: 18,
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/images/board1.png",
                // category: "Dry Cleaning",
                numofven: 18,
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/images/board3.png",
                // category: "Ironing",
                numofven: 18,
                press: () {},
              ),
              // SpecialOfferCard(
              //   image: "assets/images/laundryshop4.png",
              //   // category: "Knitting",
              //   numofven: 24,
              //   press: () {},
              // ),
              SizedBox(width: (20)),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    // required this.category,
    required this.image,
    required this.numofven,
    required this.press,
  }) : super(key: key);

  final String image;
  // final String  category;

  final int numofven;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: (17)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: (300),
          height: (130),
          child: ClipRRect(
            
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.fitWidth,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 3.0),
                    borderRadius: BorderRadius.all(Radius.circular(
                            20.0) //                 <--- border radius here
                        ),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent
                        // Color.fromARGB(255, 53, 53, 53).withOpacity(0.4),
                        // Color.fromARGB(255, 3, 3, 3).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.symmetric(
                //     horizontal: (15.0),
                //     vertical: (10),
                //   ),
                //   child: Text.rich(
                //     TextSpan(
                //       style: TextStyle(color: Colors.white),
                //       children: [
                //         TextSpan(
                //           // text: "$category\n",
                //           style: TextStyle(
                //             fontSize: (18),
                //             fontWeight: FontWeight.bold,
                //           ),
                //         ),
                //         TextSpan(text: "$numofven Customers\n\n\n\n"),

                //         TextSpan(text: "₹200",style: TextStyle(fontSize: 17))

                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
