import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RresponsiveLayout extends StatelessWidget {
  const RresponsiveLayout(
      {super.key, required this.mobileLayout, required this.webLayout});
  final Widget mobileLayout;
  final Widget webLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 900) {
        return webLayout;
      } else {
        return mobileLayout;
      }
    });
  }
}
