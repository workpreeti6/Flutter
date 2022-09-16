import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justus_admin/Home/components/togglebutton.dart';
import 'package:justus_admin/Routes/routes.dart';
import 'package:justus_admin/style/color.dart';

class Options extends StatefulWidget {
  Options({Key? key, required this.title,required this.image}) : super(key: key);
  String title;
  String image;

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  // bool value = false;
  bool _myBoolean = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: AppColor.grey),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              // Container(
              //   height: 26,
              //   width: 26,
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(50),
              //       border: Border.all(color: AppColor.grey)),
              // ),
              // Checkbox(
              //   value: _myBoolean,
              //   onChanged: (value) {
              //     setState(() {
              //       _myBoolean = value!; // rebuilds with new value
              //     });
              //   },
              // ),
              SvgPicture.asset(
                '${widget.image}',
                height: 30,
                width: 30,
              ),
              SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "  ${widget.title}",
                    style: GoogleFonts.varelaRound(
                        color: AppColor.black, fontSize: 16),
                  ),
                  TextButton(onPressed: () {  Navigator.pushNamed(context, Routes.price);}, child: Text("Set price scheme"))
                ],
              ),
              Spacer(),
              ToggleButton(),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
