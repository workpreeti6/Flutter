import 'package:flutter/material.dart';
import 'package:justusnew/common/size_config.dart';
import 'package:justusnew/routes/routes.dart';
import 'package:justusnew/style/color.dart';

// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:shop_app/components/no_account_text.dart';
// import 'package:shop_app/components/socal_card.dart';
import 'sign_in_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.1),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign in with your email and password",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     SocalCard(
                //       icon: "assets/icons/google-icon.svg",
                //       press: () {},
                //     ),
                //     SocalCard(
                //       icon: "assets/icons/facebook-2.svg",
                //       press: () {},
                //     ),
                //     SocalCard(
                //       icon: "assets/icons/twitter.svg",
                //       press: () {},
                //     ),
                //   ],
                // ),
                SizedBox(height: getProportionateScreenHeight(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style:
                          TextStyle(fontSize: getProportionateScreenWidth(16)),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, Routes.register),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(16),
                          color: AppColor.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// class SocalCard extends StatelessWidget {
//   const SocalCard({
//     Key? key,
//     this.icon,
//     this.press,
//   }) : super(key: key);

//   final String? icon;
//   final Function? press;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: press as void Function()?,
//       child: Container(
//         margin:
//             EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
//         padding: EdgeInsets.all(getProportionateScreenWidth(12)),
//         height: getProportionateScreenHeight(40),
//         width: getProportionateScreenWidth(40),
//         decoration: BoxDecoration(
//           color: Color(0xFFF5F6F9),
//           shape: BoxShape.circle,
//         ),
//         child: SvgPicture.asset(icon!),
//       ),
//     );
//   }
// }
