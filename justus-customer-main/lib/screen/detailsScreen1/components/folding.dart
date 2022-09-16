import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:justusnew/screen/details/components/counter.dart';
import 'package:justusnew/screen/detailsScreen1/components/iron.dart';

import '../../../style/color.dart';
import 'ServiceIcons.dart';

class Folding extends StatelessWidget {
  Folding({
    Key? key,
  }) : super(key: key);

  List<Categories> categories = [
    Categories(
      title: 'Clothes per kg',
      icon: 'assets/icons/clothes.png',
      price: 'Rs. 200',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColor.lightBlue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.only(top: 24, left: 24, right: 24),
      child: Padding(
        padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
        child: ExpandablePanel(
          header: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              SvgPicture.asset(
                'assets/images/cloth.svg',
                height: 30,
                width: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text("Folding Service",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          collapsed: const SizedBox.shrink(),
          expanded: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //   crossAxisCount: 2,
              // ),
              itemCount: categories.length,
              itemBuilder: (context, index) => Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      ServiceIcon(
                          iconAsset: categories[index].icon,
                          price: categories[index].price,
                          title: categories[index].title),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  )),
        ),
      ),
    );
  }
}
