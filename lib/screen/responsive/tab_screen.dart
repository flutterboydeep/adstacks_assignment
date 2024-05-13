import 'package:adstacks_assignment/widgets/helper_widget/colors.dart';
import 'package:adstacks_assignment/widgets/left/drawer_part.dart';
import 'package:adstacks_assignment/widgets/middle/middle_homepage.dart';
import 'package:adstacks_assignment/widgets/right/reminder_container.dart';
import 'package:adstacks_assignment/widgets/right/reminder_right_part.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({super.key});

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
        child: Column(
          children: [MiddleHompagePart(), ReminderContainer()],
        ),
      ),
    );
  }
}
