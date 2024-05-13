import 'package:adstacks_assignment/widgets/left/drawer_part.dart';
import 'package:adstacks_assignment/widgets/middle/middle_homepage.dart';
import 'package:adstacks_assignment/widgets/right/reminder_right_part.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmallWeb extends StatelessWidget {
  const SmallWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: DrawerPart(),
        ),
        body: Row(
          children: [
            Expanded(child: MiddleHompagePart()),
            SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.3,
                child: ReminderRightPar()),
          ],
        ));
  }
}
