import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:justusnew/screen/detailsScreen1/reviews/components/reviewUI.dart';
import 'package:justusnew/style/color.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
// import 'package:smooth_star_rating/smooth_star_rating.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:justusnew/style/color.dart';

// class Reviews extends StatelessWidget {
//   const Reviews({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 1,
//         title: Text(
//           "Reviews",
//           style: TextStyle(
//               color: AppColor.blue, fontWeight: FontWeight.w200, fontSize: 20),
//           textAlign: TextAlign.center,
//         ),
//       ),
//       body: ,
//     );
//   }
// }
class Reviews extends StatefulWidget {
  Reviews({ Key? key}) : super(key: key);

  @override
  _ReviewsState createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  bool isMore = false;
  List<double> ratings = [0.1, 0.3, 0.5, 0.7, 0.9];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          "Reviews",
          style: TextStyle(
              color: AppColor.blue, fontWeight: FontWeight.w200, fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 16.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "4.5",
                            style: TextStyle(fontSize: 48.0),
                          ),
                          TextSpan(
                            text: "/5",
                            style: TextStyle(
                              fontSize: 24.0,
                              color: AppColor.backgroundColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // SmoothStarRating(
                    //   starCount: 5,
                    //   rating: 4.5,
                    //   size: 28.0,
                    //   color: Colors.orange,
                    //   borderColor: Colors.orange,
                    // ),
                    SizedBox(height: 16.0),
                    Text(
                      "13 Reviews",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: AppColor.grey,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 200.0,
                  child: ListView.builder(
                    shrinkWrap: true,
                    reverse: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Text(
                            "${index + 1}",
                            style: TextStyle(fontSize: 18.0),
                          ),
                          SizedBox(width: 4.0),
                          Icon(Icons.star, color: Colors.orange),
                          SizedBox(width: 8.0),
                          LinearPercentIndicator(
                            lineHeight: 6.0,
                            // linearStrokeCap: LinearStrokeCap.roundAll,
                            width: MediaQuery.of(context).size.width / 2.8,
                            animation: true,
                            animationDuration: 2500,
                            percent: ratings[index],
                            progressColor: Colors.orange,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.only(bottom: 8.0, top: 8.0),
              itemCount: 4,
              itemBuilder: (context, index) {
                return ReviewUI(
                  image: "reviewList[index].image",
                  name: 'reviewList[index].name',
                  date: 'reviewList[index].date',
                  comment: 'reviewList[index].comment',
                  rating: 4.5,
                  onPressed: () => print("More Action $index"),
                  onTap: () => setState(() {
                    isMore = !isMore;
                  }),
                  isLess: isMore,
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  thickness: 2.0,
                  color: AppColor.lightBlue,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}