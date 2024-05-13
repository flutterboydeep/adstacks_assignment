import 'package:adstacks_assignment/widgets/helper_widget/colors.dart';
import 'package:adstacks_assignment/widgets/helper_widget/helper_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class TopCreatorsCard extends StatelessWidget {
  const TopCreatorsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: mainCardColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: HelperText(
                text: "Top Creators",
                textColor: Colors.white,
                isfontWeightBold: true,
                fontsize: 16),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Color.fromARGB(10, 95, 66, 142),
              // boxShadow: [
              //   BoxShadow(color: Colors.black),
              // ]),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HelperText(
                  text: "Name",
                  textColor: Colors.white,
                  fontsize: 14,
                ),
                HelperText(
                  text: "Artworks",
                  textColor: Colors.white,
                  fontsize: 14,
                ),
                HelperText(
                  text: "Rating",
                  textColor: Colors.white,
                  fontsize: 14,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    elevation: 0,
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.transparent,
                    child: ListTile(
                      tileColor: mainCardColor,
                      leading: CircleAvatar(
                        radius: 10,
                        backgroundImage:
                            AssetImage("lib/assets/coffeeImages/c1.jpg"),
                      ),
                      title: Row(
                        mainAxisSize: MainAxisSize.min,
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          HelperText(
                            text: "@__Deep",
                            textColor: Colors.white,
                            fontsize: 12,
                          ),
                          Expanded(
                            child: SizedBox(),
                          ),
                          Center(
                            child: HelperText(
                              text: "0639",
                              textColor: Colors.white,
                              fontsize: 12,
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          Expanded(child: SizedBox()),
                        ],
                      ),
                      trailing: SizedBox(
                        width: 55,
                        height: 10,
                        child: LinearPercentIndicator(
                          width: 55,
                          percent: 0.7,
                          lineHeight: 15,
                          progressColor: Color.fromARGB(255, 61, 55, 230),
                          backgroundColor: Colors.grey,
                          barRadius: const Radius.circular(15),
                        ),
                      ),
                    ),
                  ),
                );
              },
              itemCount: 3,
            ),
          ),
          SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
