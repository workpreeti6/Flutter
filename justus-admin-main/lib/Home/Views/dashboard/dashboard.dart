
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justus_admin/Home/Views/dashboard/components/swipecard.dart';
import 'package:justus_admin/Routes/routes.dart';
import 'package:justus_admin/style/color.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 18),
            child: Row(
              children: [
                Container(
                  child: CircleAvatar(
                    backgroundColor: AppColor.blue,
                    backgroundImage: AssetImage("assets/images/profile1.png"),
                    radius: 28,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome Back!",
                      style: GoogleFonts.varelaRound(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "dexperts_01",
                      style: GoogleFonts.varelaRound(
                          fontSize: 14, color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Swipe_Cards(),
          SizedBox(
            height: 23,
          ),
          GridView.count(
            shrinkWrap: true,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            primary: false,
            crossAxisCount: 2,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.recentrequests);
                },
                child: Card(
                  color: Colors.blue[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 2,
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/neworders.png",
                        height: 72,
                      ),
                      Text(
                        '\nNew Orders (11)',
                        style: GoogleFonts.varelaRound(
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.orders);
                },
                child: Card(
                  color: Colors.blue[100],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 2,
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/arriving.png",
                        height: 72,
                      ),
                      Text(
                        '\nArriving Orders (9)',
                        style: GoogleFonts.varelaRound(
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.delivery_due);
                },
                child: Card(
                  color: Colors.blue[100],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 2,
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/duedelivery.png",
                        height: 72,
                      ),
                      Text(
                        '\nDeliveries Due (3)',
                        style: GoogleFonts.varelaRound(
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.delivery_over_due);
                },
                child: Card(
                  color: Colors.blue[100],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 2,
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/overdue.png",
                        height: 72,
                      ),

                      // SizedBox(height:20),
                      Text(
                        '\nDeliveries Overdue (6)',
                        style: GoogleFonts.varelaRound(
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
