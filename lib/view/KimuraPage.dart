import 'package:flutter/material.dart';

class KimuraPage extends StatelessWidget {

  final String title;
  final Color bgColor;

  const KimuraPage({Key? key, required this.title, required this.bgColor}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 180,
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.amberAccent
              ),
            ),
            Container(
              width: 200,
              height: 180,
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.lime
              ),
            ),
            Container(
              width: 200,
              height: 180,
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.orangeAccent
              ),
            ),
            Container(
              width: 200,
              height: 180,
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.lightBlueAccent
              ),
            ),
          ],
        ),
        SizedBox(
          height: 250,
          // margin: const EdgeInsets.only(left: 10, right: 10),
          child: ListView(
            children: const [
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text("やまもと"),
                tileColor: Colors.white70,
              ),
              ListTile(
                leading:Icon(Icons.favorite),
                title: Text("しらき"),
                tileColor: Colors.white70,
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text("こいけ"),
                tileColor: Colors.white70,
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text("みなみ"),
                tileColor: Colors.white70,
              ),
            ],
          ),
        )
      ],
    );
  }
}
