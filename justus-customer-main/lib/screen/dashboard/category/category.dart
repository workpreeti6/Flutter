import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:justusnew/style/color.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {
        "icon": "assets/images/washing.svg",
        "text": "Wash",
        "route": "washing",
      },
      {
        "icon": "assets/images/basket.svg",
        "text": "Dry Clean",
        "route": "dryclean",
      },
      // {"icon": "assets/images/delivery.svg", "text": "E-Laundry","route":"Ironing"},
      {
        "icon": "assets/images/iron.svg",
        "text": "Ironing",
        "route": "Ironing",
      },
      {
        "icon": "assets/images/knitting.svg",
        "text": "Knitting",
        "route": "Fold"
      },
      //{"icon": "assets/images/cloth.svg", "text": "Service"},
    ];
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            icon: categories[index]["icon"],
            text: categories[index]["text"],
            press: () {
              Navigator.pushNamed(context, categories[index]["route"]);
            },
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String? icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: 55,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                color: AppColor.lightBlue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(icon!),
            ),
            SizedBox(height: 5),
            Text(text!, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
