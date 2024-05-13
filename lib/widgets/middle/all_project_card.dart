import 'package:adstacks_assignment/widgets/helper_widget/colors.dart';
import 'package:adstacks_assignment/widgets/helper_widget/helper_text.dart';

import 'package:flutter/material.dart';

class AllProjectCard extends StatelessWidget {
  const AllProjectCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: mainCardColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: HelperText(
                text: "All Projects",
                textColor: Colors.white,
                isfontWeightBold: true,
                fontsize: 16),
          ),
          SizedBox(
            height: 187,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    color: mainCardColor,
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      tileColor:
                          index == 0 ? Colors.red : Color.fromARGB(60, 0, 0, 0),
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: const Image(
                          image: AssetImage(
                              "lib/assets/coffeeImages/coffeeBanner2.jpg"),
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: HelperText(
                        text: "Technology behind the Blockchain",
                        textColor: Colors.white,
                        fontsize: index == 0 ? 12 : 10,
                        isfontWeightBold: true,
                      ),
                      subtitle: Wrap(
                        children: [
                          HelperText(
                            text: "Project #1",
                            textColor: index == 0
                                ? Colors.white
                                : Color.fromARGB(255, 151, 163, 251),
                            fontsize: 12,
                            isfontWeightBold: true,
                          ),
                          InkWell(
                              onTap: () {},
                              child: HelperText(
                                text: " See project details",
                                fontsize: 12,
                                textColor: Colors.white,
                              ))
                        ],
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.edit,
                            size: index == 0 ? 20 : 15,
                            color: index == 0
                                ? Colors.white
                                : Colors.grey.shade300),
                      ),
                    ),
                  ),
                );
              },
              itemCount: 3,
            ),
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
