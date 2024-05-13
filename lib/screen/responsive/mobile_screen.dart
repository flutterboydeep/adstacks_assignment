import 'package:adstacks_assignment/widgets/helper_widget/colors.dart';
import 'package:adstacks_assignment/widgets/left/drawer_part.dart';
import 'package:adstacks_assignment/widgets/middle/all_project_card.dart';
import 'package:adstacks_assignment/widgets/middle/line_graph_page.dart';
import 'package:adstacks_assignment/widgets/middle/top_creators_card.dart';
import 'package:adstacks_assignment/widgets/middle/top_rating_banner.dart';
import 'package:adstacks_assignment/widgets/right/reminder_container.dart';

import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerPart(),
      ),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Icon(Icons.text_snippet_outlined),
                  SizedBox(width: 8),
                  Icon(Icons.notifications_none_rounded),
                  SizedBox(width: 8),
                  Icon(Icons.power_settings_new_outlined),
                ]),
              ],
            ),
          ),
          CircleAvatar(
            radius: 25,
            backgroundColor: reminderCardColor,
            foregroundImage: AssetImage("lib/assets/coffeeImages/c4.jpg"),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TopRatingBanner(),
              SizedBox(
                height: 10,
              ),
              AllProjectCard(),
              SizedBox(
                height: 10,
              ),
              TopCreatorsCard(),
              SizedBox(
                height: 10,
              ),
              ReminderContainer(),
              SizedBox(height: 190, child: LineGraphPage())
            ],
          ),
        ),
      ),
    );
  }
}
