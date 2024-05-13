import 'dart:developer';

import 'package:flutter/cupertino.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenlayout;
  final Widget smallweblayout;

  final Widget tabScreenlayout;
  final Widget mobileScreenlayout;
  ResponsiveLayout({
    super.key,
    required this.webScreenlayout,
    required this.tabScreenlayout,
    required this.smallweblayout,
    required this.mobileScreenlayout,
  });

  @override
  Widget build(BuildContext context) {
    log("Media query is= ${MediaQuery.sizeOf(context).width}");
    return LayoutBuilder(builder: (context, width) {
      if (width.maxWidth > 1192) {
        return webScreenlayout;
      } else if (width.maxWidth > 835 && width.maxWidth <= 1192) {
        return smallweblayout;
      } else if (width.maxWidth > 540 && width.maxWidth <= 835) {
        return tabScreenlayout;
      } else {
        return mobileScreenlayout;
      }
    });
  }
}
