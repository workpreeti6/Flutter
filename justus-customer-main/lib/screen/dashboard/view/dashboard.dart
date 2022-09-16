// import 'dart:html';

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:justusnew/common/size_config.dart';
import 'package:justusnew/screen/dashboard/category/category.dart';
import 'package:justusnew/screen/dashboard/view/filter.dart';
import 'package:justusnew/screen/dashboard/view/item_card.dart';
import 'package:justusnew/screen/dashboard/view/product.dart';
import 'package:justusnew/screen/dashboard/view/sort.dart';
import 'package:justusnew/screen/details/detailscreen.dart';
import 'package:justusnew/screen/detailsScreen1/view/DescPage.dart';

import '../../../common/search-bar.dart';
// import 'category/category.dart';

class dashboard extends StatelessWidget {
  dashboard({
    Key? key,
  }) : super(key: key);
  var searchController = TextEditingController();
  bool isIconVisible = false;
  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SearchBar(
              iconVisible: isIconVisible,
              controller: searchController,
              onChanged: (value) {
                print(value);
                if (value.isNotEmpty) {
                  isIconVisible = true;
                  (context as Element).markNeedsBuild();
                } else {
                  isIconVisible = false;
                  (context as Element).markNeedsBuild();
                }
                //api
              },
            ),
          ),
          Categories(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(right: 30),
                  alignment: Alignment.topRight,
                  child: Filter(),
                ),
                Container(
                  padding: EdgeInsets.only(left: 30),
                  alignment: Alignment.topLeft,
                  child: Sort(),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              // listDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //   crossAxisCount: 2,
              //   childAspectRatio: 0.75,
              //   mainAxisSpacing: 2,
              //   crossAxisSpacing: 2,
              // ),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(10.0),
                child: ItemCard(
                  product: products[index],
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DescPage(
                        product: products[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
