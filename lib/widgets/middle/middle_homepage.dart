import 'package:adstacks_assignment/widgets/middle/all_project_card.dart';
import 'package:adstacks_assignment/widgets/helper_widget/colors.dart';
import 'package:adstacks_assignment/widgets/helper_widget/helper_text.dart';
import 'package:adstacks_assignment/widgets/middle/line_graph_page.dart';
import 'package:adstacks_assignment/widgets/middle/top_creators_card.dart';
import 'package:adstacks_assignment/widgets/middle/top_rating_banner.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MiddleHompagePart extends StatelessWidget {
  const MiddleHompagePart({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 9),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HelperText(
                  text: "Home",
                  textColor: Color.fromARGB(255, 125, 124, 124),
                  isfontWeightBold: true,
                  fontsize: 15,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        prefix: SizedBox(width: 15),
                        contentPadding: EdgeInsets.all(2),
                        filled: true,
                        fillColor: searchBarColor,
                        hintText: "Search",
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 168, 183, 247),
                            fontWeight: FontWeight.bold),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: Color.fromARGB(255, 168, 183, 247),
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            TopRatingBanner(),
            SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(child: AllProjectCard()),
                  Expanded(child: TopCreatorsCard())
                ],
              ),
            ),
            SizedBox(
                height: 220,
                // width: MediaQuery.sizeOf(context).width * 0.58,
                child: LineGraphPage()),
          ],
        ),
      ),
    );
  }
}
