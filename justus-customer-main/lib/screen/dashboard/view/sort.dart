import 'package:flutter/material.dart';
import 'package:justusnew/style/color.dart';

class Sort extends StatefulWidget {
  const Sort({Key? key}) : super(key: key);

  @override
  State<Sort> createState() => _DateFilterState();
}

class _DateFilterState extends State<Sort> {
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "0", child: Text("  Sort By")),
      const DropdownMenuItem(value: "1", child: Text("Rating ")),
      const DropdownMenuItem(value: "2", child: Text("Distance")),
      // const DropdownMenuItem(value: "3", child: Text("")),
    ];
    return menuItems;
  }

  String selectedValue = "0";
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      borderRadius: BorderRadius.circular(5),
      dropdownColor: AppColor.lightGrey,
      value: selectedValue,
      items: dropdownItems,
      onChanged: (String? value) {
        setState(() {
          selectedValue = value!;
        });
      },
    );
  }
}
