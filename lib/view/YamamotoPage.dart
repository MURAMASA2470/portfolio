import 'package:flutter/material.dart';

class YamamotoPage extends StatelessWidget {

  final String title;
  final Color bgColor;

  const YamamotoPage({Key? key, required this.title, required this.bgColor}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      color: this.bgColor,
    );
  }
}
