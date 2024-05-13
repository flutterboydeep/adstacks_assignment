import 'package:adstacks_assignment/widgets/left/drawer_part.dart';
import 'package:adstacks_assignment/widgets/middle/middle_homepage.dart';
import 'package:adstacks_assignment/widgets/right/reminder_right_part.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.2,
              child: DrawerPart()),
          Expanded(
              // width: MediaQuery.sizeOf(context).width * 0.6,
              child: MiddleHompagePart()),
          SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.2,
              child: ReminderRightPar()),
        ],
      ),
    );
  }
}
