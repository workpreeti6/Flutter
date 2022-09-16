
import 'package:flutter/material.dart';

import '../../dashboard/view/product.dart';

class imageandproduct extends StatelessWidget {
  const imageandproduct({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ironing',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context).textTheme.headline4?.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 60,),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: '2 Km Away \n',
                        style: TextStyle(
                            color: Colors.white, fontSize: 20)),
                    TextSpan(
                      text: '₹ ${product.rating} /Cloth \n',
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          ?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                    ),
                    // TextSpan(text: '2 Km Away'),
                  ],
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: ClipOval(
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(100),
                    child: Image.asset(
                      product.image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
