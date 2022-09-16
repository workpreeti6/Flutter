import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justusnew/screen/dashboard/view/product.dart';
import 'package:justusnew/style/color.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final press;
  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: AppColor.lightBlue,
              borderRadius: BorderRadius.circular(30),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Hero(
                tag: "${product.id}",
                child: Image.asset(
                  product.image,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  // products is out demo list
                  product.title,
                  style: GoogleFonts.notoSans(
                    color: AppColor.blue,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                " ${product.description}",
                style: GoogleFonts.notoSans(
                  color: AppColor.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (product.washing ?? false)
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/images/washing.svg',
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                    if (product.drycleaning ?? false)
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/images/basket.svg',
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                    if (product.iron ?? false)
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/images/iron.svg',
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                    if (product.folding ?? false)
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/images/cloth.svg',
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ],
          ),
          // Text(
          //   "Rating - ${product.price}/5",
          //   style: GoogleFonts.notoSans(
          //     color: AppColor.grey,
          //     fontWeight: FontWeight.bold,
          //     fontSize: 14.0,
          //   ),
          // )
        ],
      ),
    );
  }
}
