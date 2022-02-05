import 'package:flutter/material.dart';

class KimuraPage extends StatelessWidget {

  final String title;
  final Color bgColor;

  const KimuraPage({Key? key, required this.title, required this.bgColor}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      color: this.bgColor,
    );
  }
}
