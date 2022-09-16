import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:justusnew/screen/detailsScreen1/components/ServiceIcons.dart';

import '../../../style/color.dart';

class dry_cleaning extends StatelessWidget {
  dry_cleaning({
    Key? key,
  }) : super(key: key);

  List<categories_for_dc> categories = [
    categories_for_dc(
      title: 'Shirt',
      icon: 'assets/icons/shirt.png',
      price: 'Rs. 25',
    ),
    categories_for_dc(
      title: 'Pants',
      icon: 'assets/icons/pants.png',
      price: 'Rs. 25',
    ),
    categories_for_dc(
      title: 'Jeans',
      icon: 'assets/icons/jeans.png',
      price: 'Rs. 25',
    ),
    categories_for_dc(
      title: 'Dress',
      icon: 'assets/icons/dress.png',
      price: 'Rs. 30',
    ),
    categories_for_dc(
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
                'assets/images/basket.svg',
                height: 30,
                width: 30,
                color: AppColor.black,
              ),
              SizedBox(
                width: 10,
              ),
              Text("Dry Cleaning",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColor.black)),
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

class categories_for_dc {
  categories_for_dc({
    required this.icon,
    required this.title,
    required this.price,
  });

  String icon;
  String title;
  String price;
}
