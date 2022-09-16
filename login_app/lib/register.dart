import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
      home:Registration()
  ));
}

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/register.png'),
              fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left:35,top:130),
              child: Text('Register\nHere',
                  style:TextStyle(
                      color:Colors.white,
                      fontSize: 30.0
                  )),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top:MediaQuery.of(context).size.height*0.28,
                    right:35,
                    left: 35),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color:Colors.black)
                        ),
                         // fillColor: Colors.grey.shade100,
                          //filled: true,
                          hintText: 'Name',
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white)
                          )
                      ),
                    ),
                    SizedBox(height: 30.0),
                    TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color:Colors.black)
                          ),
                          // fillColor: Colors.grey.shade100,
                          //filled: true,
                          hintText: 'Email',
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)
                          )
                      ),
                    ),
                    SizedBox(height: 30.0),
                    TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color:Colors.black)
                          ),
                          // fillColor: Colors.grey.shade100,
                          //filled: true,
                          hintText: 'Phone',
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)
                          )
                      ),
                    ),
                    SizedBox(height: 30.0),
                    TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color:Colors.black)
                          ),
                          // fillColor: Colors.grey.shade100,
                          //filled: true,

                          hintText: 'Password',
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)
                          )
                      ),
                    ),
                    SizedBox(height: 40.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Register',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700
                          ),),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: () {
                             // Navigator.pushNamed(context, '')
                            },
                            icon: Icon(Icons.login),

                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'login');
                            },
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff4c505b),
                                  decoration: TextDecoration.underline
                              ),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
