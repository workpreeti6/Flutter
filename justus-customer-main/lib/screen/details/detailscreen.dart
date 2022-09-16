import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:justusnew/screen/dashboard/view/product.dart';
import 'package:justusnew/screen/details/components/detailScreenBody.dart';
import 'package:justusnew/style/color.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
 
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blue,
      appBar: detailScreenBar(context),
      body: DetailScBody(product: product,),
    );
  }

  AppBar detailScreenBar(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.blue,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_new_outlined),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
         FavoriteButton(iconSize: 40,iconDisabledColor: Colors.white,
            valueChanged: (_isFavorite) {
              print('Is Favorite $_isFavorite)');
            },
          ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart),
        ),
        SizedBox(width: 2,)
      ],
    );
  }
}
