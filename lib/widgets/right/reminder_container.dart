import 'package:adstacks_assignment/widgets/helper_widget/colors.dart';
import 'package:adstacks_assignment/widgets/helper_widget/helper_text.dart';
import 'package:adstacks_assignment/widgets/right/anniversary_card.dart';
import 'package:adstacks_assignment/widgets/right/birthday_card.dart';
import 'package:adstacks_assignment/widgets/right/calender.dart';

import 'package:flutter/material.dart';

class ReminderContainer extends StatelessWidget {
  const ReminderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      color: reminderBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HelperText(
                text: "GENERAL 10:00 AM TO 7;00 PM",
                textColor: Colors.white,
                fontsize: 13),
            Calender(),
            Expanded(child: BirthDayCard()),
            Expanded(child: AnniversaryCard())
          ],
        ),
      ),
    );
  }
}
