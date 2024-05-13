import 'package:adstacks_assignment/widgets/helper_widget/colors.dart';
import 'package:adstacks_assignment/widgets/helper_widget/helper_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BirthDayCard extends StatelessWidget {
  const BirthDayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: reminderCardColor,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              HelperText(
                text: "Today Birthday",
                textColor: Colors.white,
                fontsize: 14,
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  pic("lib/assets/coffeeImages/c1.jpg"),
                  SizedBox(width: 8),
                  pic("lib/assets/coffeeImages/emptyPerson.png"),
                ],
              ),
              SizedBox(height: 11),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HelperText(
                    text: "Total",
                    textColor: Color.fromARGB(255, 158, 158, 158),
                    fontsize: 12,
                  ),
                  SizedBox(width: 25),
                  HelperText(
                    text: " | ",
                    textColor: Color.fromARGB(255, 158, 158, 158),
                    fontsize: 25,
                  ),
                  HelperText(
                    text: "2",
                    textColor: Color.fromARGB(255, 255, 255, 255),
                    fontsize: 15,
                  ),
                  HelperText(
                    text: " | ",
                    textColor: Color.fromARGB(255, 158, 158, 158),
                    fontsize: 25,
                  ),
                ],
              ),
              button("Birthday Wishing"),
            ],
          ),
        ),
      ),
    );
  }

  pic(String imageUrl) {
    return Stack(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: reminderCardColor,
            image: DecorationImage(image: AssetImage(imageUrl)),
            border: Border.all(
              width: 2,
              color: Color.fromARGB(255, 177, 142, 193),
            ),
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        Positioned(
          top: 0,
          right: 5,
          child: Image(
            height: 20,
            width: 20,
            image: AssetImage("lib/assets/coffeeImages/birthday_hat.png"),
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }

  button<Widget>(buttonText) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Color.fromARGB(255, 162, 58, 183)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.rotate(
              angle: -45,
              child: Icon(
                Icons.send_outlined,
                color: Colors.white,
                size: 12,
              ),
            ),
            SizedBox(width: 10),
            HelperText(
              text: buttonText,
              textColor: Colors.white,
              fontsize: 12,
            ),
          ],
        ),
      ),
    );
  }
}
