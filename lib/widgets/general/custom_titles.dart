
import 'package:flutter/material.dart';

class CustomScreenTitle extends StatelessWidget {

  final String title;
  final double top;
  const CustomScreenTitle({
    super.key,
    required this.title,
    this.top = 20
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: top),
        child: Text(title,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600)));
  }
}
