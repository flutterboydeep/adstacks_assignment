import 'package:adstacks_assignment/widgets/right/anniversary_card.dart';
import 'package:adstacks_assignment/widgets/right/birthday_card.dart';
import 'package:adstacks_assignment/widgets/helper_widget/colors.dart';
import 'package:adstacks_assignment/widgets/helper_widget/helper_text.dart';
import 'package:adstacks_assignment/widgets/right/calender.dart';
import 'package:adstacks_assignment/widgets/right/reminder_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ReminderRightPar extends StatelessWidget {
  const ReminderRightPar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
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
                CircleAvatar(
                  radius: 15,
                  backgroundColor: reminderCardColor,
                  foregroundImage: AssetImage("lib/assets/coffeeImages/c4.jpg"),
                ),
              ],
            ),
          ),
          ReminderContainer(),
          // Text("Hi I am left part of homepage"),
        ],
      ),
    );
  }
}
