import 'package:flutter/material.dart';
import 'package:first_app/src/pages/user_page.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('assets/Logo.jpg', width: 200.0, height: 200.0),
            Text(
              'Control académico\nIngeniería en Desarrollo de Software',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, color: Colors.black),
            ),
            RaisedButton(
              //onPressed: () => NewPage(),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserPage()),
                );
              },
              child: Text(
                'Comenzar',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              color: Color(0xff2AC8C2),
            )
          ],
        )
      ),
    );
  }
}