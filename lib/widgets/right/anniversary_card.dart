import 'dart:developer';

import 'package:adstacks_assignment/widgets/helper_widget/colors.dart';
import 'package:adstacks_assignment/widgets/helper_widget/helper_text.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnniversaryCard extends StatelessWidget {
  const AnniversaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    log("Media query = ${MediaQuery.sizeOf(context).width}");
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: reminderCardColor,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              HelperText(
                text: "Anniversary",
                textColor: Colors.white,
                fontsize: 14,
              ),
              SizedBox(height: 11),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    pic("lib/assets/coffeeImages/c1.jpg"),
                    SizedBox(width: 11),
                    pic("lib/assets/coffeeImages/emptyPerson.png"),
                    SizedBox(width: 11),
                    pic("lib/assets/coffeeImages/c4.jpg"),
                  ],
                ),
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
                    text: "3",
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
              button("Anniversary Wishing"),
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
        child: SingleChildScrollView(
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
      ),
    );
  }
}
