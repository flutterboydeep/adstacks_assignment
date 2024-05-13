import 'package:adstacks_assignment/widgets/helper_widget/colors.dart';
import 'package:adstacks_assignment/widgets/helper_widget/helper_text.dart';
import 'package:flutter/material.dart';

class TopRatingBanner extends StatelessWidget {
  const TopRatingBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), gradient: LinearGradient(
              transform: GradientRotation(-1),
              // transform: GradientRotation(5),
              // tileMode: TileMode.decal,

              // begin: Alignment.bottomLeft,
              // end: Offset(1.0,1.0),
              colors: [gradient1, gradient2])),
      child: Stack(
        children: [
          Positioned(
              right: 0,
              top: 0,
              child: Opacity(
                opacity: 0.4,
                child: Image(
                  image: AssetImage("lib/assets/coffeeImages/3dVector.png"),
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HelperText(
                  text: "ETHEREUM 2.0",
                  fontsize: 8,
                  textColor: Colors.white,
                ),
                HelperText(
                  text: "Top Rating\nProject",
                  fontsize: 18,
                  textColor: Colors.white,
                  isfontWeightBold: true,
                ),
                HelperText(
                  text:
                      "Trending project and high rating\nProject Created by team. ",
                  fontsize: 10,
                  textColor: Colors.white,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(mainCardColor),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                    ),
                    onPressed: () {},
                    child: HelperText(
                      text: "Learn More.",
                      fontsize: 12,
                      textColor: Colors.white,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
