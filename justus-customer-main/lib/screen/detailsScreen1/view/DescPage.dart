import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:justusnew/screen/dashboard/view/product.dart';
import 'package:justusnew/screen/detailsScreen1/components/ServiceIcons.dart';
import 'package:justusnew/screen/detailsScreen1/view/body.dart';
import 'package:justusnew/style/color.dart';

class DescPage extends StatelessWidget {
  final Product product;
  const DescPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          // title: const Text(
          //   'JustUs',
          //   style: TextStyle(color: Colors.black),
          // ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              splashRadius: 25,
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.favorite_outline,
                color: Colors.black,
              ),
              splashRadius: 25,
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              splashRadius: 25,
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
              splashRadius: 25,
              onPressed: () {},
            ),
            const SizedBox(
              width: 5,
            ),
          ],
          toolbarHeight: 70,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Desc_Body(product: product),
         floatingActionButton: FloatingActionButton.extended(
          
                onPressed: () {
                  // Navigator.pushNamed(context, Routes.price);
                },
                label: const Text('Checkout '),
                icon: const Icon(Icons.shopping_cart),
                backgroundColor: AppColor.blue,
              ),
      ),
    );
  }
}
