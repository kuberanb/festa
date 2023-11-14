import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget web;
  final Widget mobile;
  const ResponsiveWidget({super.key, required this.mobile, required this.web});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 768) {
          return mobile;
        } else {
          return web;
        }
      },
    );
  }
}
