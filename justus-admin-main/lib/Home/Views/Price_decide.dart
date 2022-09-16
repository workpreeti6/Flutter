import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justus_admin/Home/Views/components/washing.dart';
import 'package:justus_admin/Routes/routes.dart';

import '../../style/color.dart';

class Price extends StatefulWidget {
  Price({Key? key}) : super(key: key);

  @override
  State<Price> createState() => _PriceState();
}

class _PriceState extends State<Price> {
  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        centerTitle: true,
        title: Image.asset('assets/images/JustUs.png', height: 50),
        backgroundColor: AppColor.backgroundColor,
        elevation: 1,
        // actions: [
        //    Container(
        //     padding: EdgeInsets.only(right: 20),
        //     child: Image.asset('assets/images/JustUs.png', height: 27),
        //   ),

        // ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical:18.0),
          child: Column(
            
            children: [
              
              Text("----- Price Scheme -----",style: GoogleFonts.varelaRound(
                    fontSize: 20, fontWeight: FontWeight.bold),),
              ListView(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(vertical: 16),
                children: [
                  RadioListTile<int>(
                    value: 0,
                    groupValue: selectedValue,
                    title: Text("Per Piece"),
                    subtitle: Text("Tshirt , Shirt , Trouser , Socks etc."),
                    onChanged: (int? value) =>
                        setState(() => selectedValue = value!),
                  ),
                  RadioListTile<int>(
                    value: 1,
                    groupValue: selectedValue,
                    title: Text("Per Kg"),
                    subtitle: Text("Weight of total number of clothes"),
                    onChanged: (int? value) =>
                        setState(() => selectedValue = value!),
                  ),
                  RadioListTile<int>(
                    value: 2,
                    groupValue: selectedValue,
                    title: Text("Per Material Type"),
                    subtitle: Text("Nylon , Cotton , Silk , Denim etc."),
                    onChanged: (int? value) =>
                        setState(() => selectedValue = value!),
                  ),
                ],
              ),
              Text(
                "----- Select Price -----",
                style: GoogleFonts.varelaRound(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              iron_admin(),
            ],
          ),
        ),
      ),
       floatingActionButton: FloatingActionButton.extended(
                onPressed: () {
                  Navigator.pop(context);
                },
                label: const Text('Save Changes'),
                icon: const Icon(Icons.save),
                backgroundColor: AppColor.blue,
              ),
    );
  }
}
