// import 'package:emirateslogapp/Components/CircularProgressBar.dart';
// import 'package:emirateslogapp/Components/colors.dart';
// import 'package:emirateslogapp/Screens/Login/controller/login.controller.dart';
import 'package:flutter/material.dart';
import 'package:justusnew/common/constants.dart';
import 'package:justusnew/common/custom_surfix_icon.dart';
import 'package:justusnew/common/default_button.dart';
import 'package:justusnew/common/form_error.dart';

import 'package:justusnew/common/size_config.dart';
import 'package:justusnew/routes/routes.dart';
// import 'package:emirateslogapp/Components/custom_surfix_icon.dart';
// import 'package:emirateslogapp/Components/form_error.dart';
// import 'package:emirateslogapp/Components/keyboard.dart';
// import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';
// import 'package:emirateslogapp/theme.dart';

// import 'package:emirateslogapp/components/default_button.dart';
// import 'package:emirateslogapp/constants.dart';
// import 'package:emirateslogapp/size_config.dart';
// import 'package:provider/provider.dart';

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool? remember = false;
  List<String?> errors = [];
  bool isLoading = false;

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Stack(
        children: [
          Column(
            children: [
              buildEmailFormField(),
              SizedBox(height: getProportionateScreenHeight(20)),
              buildPasswordFormField(),
              SizedBox(height: getProportionateScreenHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap:
                        () {} /*=> Navigator.pushNamed(context, "deliveryTimeline")*/,
                    child: const Text(
                      "Forgot Password",
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              FormError(errors: errors),
              SizedBox(height: getProportionateScreenHeight(20)),
              DefaultButton(
                text: "Continue",
                press: () {
                  errors.clear();
                  if (_formKey.currentState!.validate()) {
                    // KeyboardUtil.hideKeyboard(context);
                    // password.clear();
                    // Navigator.pushNamed(context, Routes.start);
                  }
                  KeyboardUtil.hideKeyboard(context);
                  password.clear();
                  Navigator.pushNamed(context, Routes.dashboard);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      // onSaved: (newValue) =>  = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        }
        if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return;
      },
      validator: (value) {
        // if (value!.isEmpty) {
        //   addError(error: kPassNullError);
        //   return "";
        // }
        // if (value.length < 8) {
        //   addError(error: kShortPassError);
        //   return "";
        // }
        // return null;
      },
      controller: password,
      decoration: InputDecoration(
        labelStyle: const TextStyle(color: Colors.black),
        labelText: "Password",
        hintText: "Enter your password",
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 36, vertical: 20),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.black),
          gapPadding: 10,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          // borderSide: BorderSide(color: kTextColor),
          gapPadding: 10,
        ),
        // floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: const CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
      cursorColor: Colors.black,
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      // onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        }
        if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return;
      },
      validator: (value) {
        // if (value!.isEmpty) {
        //   addError(error: kEmailNullError);
        //   return "";
        // }
        // if (!emailValidatorRegExp.hasMatch(value)) {
        //   addError(error: kInvalidEmailError);
        //   return "";
        // }
        // return null;
      },
      controller: email,
      decoration: InputDecoration(
        labelStyle: const TextStyle(color: Colors.black),
        labelText: "Email",
        hintText: "Enter your email",
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 36, vertical: 20),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.black),
          gapPadding: 10,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          // borderSide: BorderSide(color: kTextColor),
          gapPadding: 10,
        ),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        // floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: const CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
      cursorColor: Colors.black,
    );
  }
}
