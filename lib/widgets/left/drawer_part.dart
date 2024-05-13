import 'package:adstacks_assignment/widgets/helper_widget/colors.dart';
import 'package:adstacks_assignment/widgets/helper_widget/helper_text.dart';
import 'package:adstacks_assignment/widgets/left/subDrawer_home_area.dart';

import 'package:flutter/material.dart';

class DrawerPart extends StatelessWidget {
  const DrawerPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: SizedBox(
                    height: 40,
                    width: 80,
                    child: Image(
                      image: AssetImage(
                          "lib/assets/coffeeImages/adstacks_loga.png"),
                    ),
                  ),
                ),
                const Divider(
                  indent: 15,
                  endIndent: 15,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 3,
                        color: Colors.orange,
                      ),
                      image: const DecorationImage(
                          image: AssetImage(
                              "lib/assets/coffeeImages/emptyPerson.png")),
                      shape: BoxShape.circle),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("Pooja Mishra"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: HelperText(
                    text: "Admin",
                    fontsize: 16,
                  ),
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      side: MaterialStateProperty.all(
                          const BorderSide(color: Colors.deepPurple, width: 2)),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent)),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  indent: 15,
                  endIndent: 15,
                ),
                const SizedBox(
                  height: 10,
                ),
                const SubDrawerHomeArea(),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                Material(
                  child: ListTile(
                    onTap: () {
                      // setState(() {
                      //   selectedIdx = 4;
                      // });
                    },

                    leading: const SizedBox(),

                    title: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.settings_outlined,
                            // color: Colors.black,
                            size: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          HelperText(
                            text: "Setting",
                            fontsize: 16,
                          ),
                        ],
                      ),
                    ),
                    // selectedTileColor: const Color.fromARGB(255, 245, 221, 0),
                  ),
                ),
                Material(
                  child: ListTile(
                    onTap: () {},

                    leading: const SizedBox(),

                    title: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.logout_sharp,
                            // color: Colors.black,
                            size: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          HelperText(
                            text: "Logout",
                            fontsize: 16,
                          ),
                        ],
                      ),
                    ),
                    // selectedTileColor: const Color.fromARGB(255, 245, 221, 0),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
