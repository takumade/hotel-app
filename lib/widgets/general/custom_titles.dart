
import 'package:flutter/material.dart';

class CustomScreenTitle extends StatelessWidget {

  final String title;
  const CustomScreenTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20),
        child: Text(title,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600)));
  }
}
