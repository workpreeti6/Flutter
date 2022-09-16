import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:justusnew/screen/dashboard/view/product.dart';
import 'package:justusnew/screen/details/components/counter.dart';
import 'package:justusnew/screen/details/components/imageandproduct.dart';
import 'package:justusnew/style/color.dart';

class DetailScBody extends StatelessWidget {
  final Product product;

  const DetailScBody({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(top: size.height * 0.012),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0),
                        child: Row(
                          children: [
                            Text('Ratings: '),
                            Container(
                              height: 100,
                              child: Image.asset('assets/images/ratingf.png'),
                            ),
                            Text("100+")
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          'Description',
                          style: TextStyle(
                              height: 1.5,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 13),
                        child: Text(
                          product.descriiption2,
                          style: TextStyle(height: 1.5),
                        ),
                      ),
                      SizedBox(height: 20,),
                      cart_counter(),
                      SizedBox(height:20),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 50,
                                width: 250,
                                child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18)),
                                  color: AppColor.blue,
                                  onPressed: () {},
                                  child: Text(
                                    "Book Now".toUpperCase(),
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                )
                                // Container(
                                //   height: 50,
                                //   width: 58,
                                //   decoration: BoxDecoration(
                                //     borderRadius: BorderRadius.circular(18),
                                //     border: Border.all(color: AppColor.blue),
                                //   ),
                                // child: IconButton,
                                )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                imageandproduct(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
