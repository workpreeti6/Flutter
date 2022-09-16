import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../details/components/counter.dart';

class ServiceIcon extends StatelessWidget {
  ServiceIcon({
    Key? key,
    required this.iconAsset,
    required this.price,
    required this.title,
  }) : super(key: key);

  String iconAsset;
  String title;
  String price;

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
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
                  height: 8,
                ),
                Text(
                  price,
                  style: TextStyle(fontSize: 12),
                ),
          ],
        ),
        Spacer(),
        cart_counter(),
        SizedBox(width: 20,)
      ],
    );
  }
}
