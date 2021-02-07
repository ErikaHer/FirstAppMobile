import 'package:flutter/material.dart';

class SubjectPage extends StatelessWidget {
  final String name;

  SubjectPage({Key key, @required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Subject"),
      ),
      body: Center(
        child: Text(
          name,
          style: TextStyle(
            fontSize: 20,
            color: Colors.deepOrangeAccent,
          ),
        ),
      ),
    );
  }
}