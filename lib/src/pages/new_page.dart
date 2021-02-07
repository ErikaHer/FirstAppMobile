import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("New Page 1"),
      ),
      body: Center(
        child: Text("New Page 1 Center"),
      ),
    );
  }
}