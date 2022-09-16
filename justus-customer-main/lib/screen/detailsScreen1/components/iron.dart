import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:justusnew/screen/detailsScreen1/components/ServiceIcons.dart';

import '../../../style/color.dart';

class iron extends StatelessWidget {
  iron({
    Key? key,
  }) : super(key: key);

  List<Categories> categories = [
    Categories(
      title: 'Shirt',
      icon: 'assets/icons/shirt.png',
      price: 'Rs. 25',
    ),
    Categories(
      title: 'Pants',
      icon: 'assets/icons/pants.png',
      price: 'Rs. 25',
    ),
    Categories(
      title: 'Jeans',
      icon: 'assets/icons/jeans.png',
      price: 'Rs. 25',
    ),
    Categories(
      title: 'Dress',
      icon: 'assets/icons/dress.png',
      price: 'Rs. 30',
    ),
    Categories(
      title: 'Blazer',
      icon: 'assets/icons/blazer.png',
      price: 'Rs. 40',
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
                'assets/images/iron.svg',
                height: 30,
                width: 30,
                color: AppColor.black,
              ),
              SizedBox(
                width: 10,
              ),
              Text("Iron Service",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: AppColor.black)),
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

class Categories {
  Categories({
    required this.icon,
    required this.title,
    required this.price,
  });

  String icon;
  String title;
  String price;
}
