import 'package:flutter/material.dart';
import 'package:first_app/src/pages/subject_page.dart';

class ListPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context){
    List<String> names = List<String>(20);
    names[0] = 'Erika Hernández';
    names[1] = 'Juliana Garzón';
    names[2] = 'Gabriela Ramos';
    names[3] = 'Berenice Pérez';
    names[4] = 'Antonio Ramos';
    names[5] = 'María Sánchez';
    names[6] = 'Samantha Díaz';
    names[7] = 'Eduardo Ruíz';
    names[8] = 'Diego Alcolés';
    names[9] = 'Fernando Trujillo';
    names[10] = 'Juan Hernández';
    names[11] = 'Ramón Jiménez';
    names[12] = 'Lizbeth Alcázar';
    names[13] = 'Alexia Sánchez';
    names[14] = 'Abigail Villatoro';
    names[15] = 'Alan Horacio';
    names[16] = 'Maleydi Morales';
    names[17] = 'Luis Morales';
    names[18] = 'Liliana Hernández';
    names[19] = 'Oswaldo Díaz';

    return Scaffold(
      appBar: AppBar(
        title: Text("Subjects"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount:names.length,
          itemBuilder: (context, index) {
            final name = names[index];

            return ListTile(
              leading: Icon(Icons.person_sharp),
              title: Text(name),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SubjectPage(name: name),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}