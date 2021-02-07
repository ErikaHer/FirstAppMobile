import 'package:flutter/material.dart';
import 'package:first_app/src/pages/list_page.dart';

class UserPage extends StatelessWidget {
  final TextEditingController userController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Builder(
        builder: (context) => Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Container(
            padding: EdgeInsets.all(80.0),
            child:SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, //Distribución uniforme de todo el espacio
                children: <Widget>[
                  TextField(
                    controller: userController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Usuario',
                    )
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Contraseña',
                    ),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListPage())
                      );
                    },
                    child: Text(
                      'Iniciar Sesión',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    color: Color(0xff2AC8C2),
                  ),
                  RaisedButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Regresar',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    color: Colors.blue,
                  )
                ],
              )
            ),
          )
        )
      ),
    );
  }

  void showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text('Usuario: ' + userController.text + '\nContraseña: ' + passwordController.text),
        action: SnackBarAction(
            label: 'Ocultar',
            onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}