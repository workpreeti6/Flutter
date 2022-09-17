import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Profilepicture extends StatelessWidget {
  const Profilepicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        clipBehavior: Clip.antiAlias,
        fit: StackFit.expand,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/Profile/profile1.png'),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: SizedBox(
              height: 40,
              width: 40,
              child: TextButton(
                //padding:EdgeInsets.zero,
               // shape: RoundedRectangleBorder(
                //  borderRadius: BorderRadius.circular(50),
                 // side: BorderSide(color: Colors.white)
                //),
                style: ButtonStyle(),
                //color: Color.fromARGB(255, 240, 239, 239),
                onPressed: () {},
                child: Icon(Icons.camera_alt_outlined),
              ),
            ),
          )
        ],
      ),
    );
  }
}
