import 'package:adstacks_assignment/widgets/helper_widget/colors.dart';
import 'package:adstacks_assignment/widgets/helper_widget/helper_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SubDrawerHomeArea extends StatefulWidget {
  const SubDrawerHomeArea({super.key});

  @override
  State<SubDrawerHomeArea> createState() => _SubDrawerHomeAreaState();
}

class _SubDrawerHomeAreaState extends State<SubDrawerHomeArea> {
  int selectedIdx = 0;
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Container(
          //   decoration: BoxDecoration(
          //     color: scaffoldBackgroundColor,
          //     borderRadius: BorderRadius.only(
          //       topLeft: Radius.circular(20),
          //       bottomLeft: Radius.circular(20),
          //     ),
          //   ),
          // child:
          Material(
            child: ListTile(
              onTap: () {
                setState(() {
                  selectedIdx = 0;
                });
              },
              selected: selectedIdx == 0 ? true : false,
              leading: SizedBox(),

              title: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.home_filled,
                      // color: Colors.black,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    HelperText(
                      text: "Home",
                      fontsize: 16,
                      isfontWeightBold: selectedIdx == 0 ? true : false,
                    ),
                  ],
                ),
              ),
              // selectedTileColor: const Color.fromARGB(255, 245, 221, 0),
            ),
          ),
          Material(
            child: ListTile(
              onTap: () {
                setState(() {
                  selectedIdx = 1;
                });
              },
              selected: selectedIdx == 1 ? true : false,
              leading: SizedBox(),

              title: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.groups_2_outlined,
                      // color: Colors.black,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    HelperText(
                      text: "Employees",
                      fontsize: 16,
                      isfontWeightBold: selectedIdx == 1 ? true : false,
                    ),
                  ],
                ),
              ),
              // selectedTileColor: const Color.fromARGB(255, 245, 221, 0),
            ),
          ),
          Material(
            child: ListTile(
              onTap: () {
                setState(() {
                  selectedIdx = 2;
                });
              },
              selected: selectedIdx == 2 ? true : false,
              leading: SizedBox(),

              title: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.checklist_rounded,
                      // color: Colors.black,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    HelperText(
                      text: "Home",
                      fontsize: 16,
                      isfontWeightBold: selectedIdx == 2 ? true : false,
                    ),
                  ],
                ),
              ),
              // selectedTileColor: const Color.fromARGB(255, 245, 221, 0),
            ),
          ),
          Material(
            child: ListTile(
              onTap: () {
                setState(() {
                  selectedIdx = 3;
                });
              },
              selected: selectedIdx == 03 ? true : false,
              leading: SizedBox(),

              title: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.calendar_month_outlined,
                      // color: Colors.black,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    HelperText(
                      text: "Summary",
                      fontsize: 16,
                      isfontWeightBold: selectedIdx == 3 ? true : false,
                    ),
                  ],
                ),
              ),
              // selectedTileColor: const Color.fromARGB(255, 245, 221, 0),
            ),
          ),
          Material(
            child: ListTile(
              onTap: () {
                setState(() {
                  selectedIdx = 4;
                });
              },
              selected: selectedIdx == 4 ? true : false,
              leading: SizedBox(),

              title: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.info_outline_rounded,
                      // color: Colors.black,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    HelperText(
                      text: "Information",
                      fontsize: 16,
                      isfontWeightBold: selectedIdx == 4 ? true : false,
                    ),
                  ],
                ),
              ),
              // selectedTileColor: const Color.fromARGB(255, 245, 221, 0),
            ),
          ),

          Stack(
            children: [
              Container(
                height: 50,
                color: Colors.deepPurple.shade100,
              ),
              ExpansionTile(
                shape: const BeveledRectangleBorder(side: BorderSide.none),
                leading: const SizedBox(
                    // width: MediaQuery.sizeOf(context).width * 0.02,
                    ),
                // expandedAlignment: Alignment.center,
                title: HelperText(
                  text: "WORKSPACES",
                  fontsize: 15,
                  isfontWeightBold: true,
                ),
                trailing: const Icon(Icons.add),
                children: const [
                  SizedBox(
                    height: 100,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ExpansionTile(
                            shape:
                                BeveledRectangleBorder(side: BorderSide.none),
                            leading: SizedBox(
                              width: 40,
                            ),
                            title: Text("Adstacks"),
                          ),
                          ExpansionTile(
                            shape:
                                BeveledRectangleBorder(side: BorderSide.none),
                            leading: SizedBox(
                              width: 40,
                            ),
                            title: Text("Finance"),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
