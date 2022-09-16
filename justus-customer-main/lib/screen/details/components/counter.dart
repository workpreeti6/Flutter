import 'package:flutter/material.dart';

class cart_counter extends StatefulWidget {
  const cart_counter({Key? key}) : super(key: key);

  @override
  State<cart_counter> createState() => _cart_counterState();
}

class _cart_counterState extends State<cart_counter> {
  int numOfItems = 0;
  void increment() {
    setState(() {
      numOfItems++;
    });
  }

  void decreament() {
    setState(() {
      if (numOfItems == 0) {
        numOfItems = 0;
        return;
      }
      numOfItems--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        outlinebutton(
          icon: Icons.remove,
          press: () {
            decreament();
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            " $numOfItems ",
            style: TextStyle(fontSize: 15),
          ),
        ),
        outlinebutton(
          icon: Icons.add,
          press: () {
            increment();
          },
        ),
      ],
    );
  }

  SizedBox outlinebutton({required IconData icon, required press}) {
    return SizedBox(
      width: 25,
      height: 25,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          backgroundColor: Colors.white,
        ),
        onPressed: press,
        child: Icon(
          icon,
          size: 20,
        ),
      ),
    );
  }
}
