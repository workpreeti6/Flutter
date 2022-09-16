import 'package:flutter/material.dart';
import 'package:justus_admin/Common/size_config.dart';
import 'package:justus_admin/style/color.dart';

class SearchBar extends StatelessWidget {
  SearchBar(
      {Key? key,
      required this.onChanged,
      this.controller,
      required this.iconVisible})
      : super(key: key);

  final Function(String)? onChanged;
  TextEditingController? controller;
  bool iconVisible;

  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: AppColor.grey.withAlpha(100),
        hintText: 'Search',
        prefixIcon: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Icon(Icons.search),
        ),
        suffixIcon: iconVisible
            ? IconButton(
                onPressed: () {
                  controller?.clear();
                  // setState(() {
                  iconVisible = false;
                  (context as Element).markNeedsBuild();
                  // });
                },
                icon: Icon(
                  Icons.clear,
                  color: Colors.black,
                  size: 20,
                ),
              )
            : null,
        contentPadding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(10),
            vertical: getProportionateScreenWidth(10)),
      ),
    );
  }
}
