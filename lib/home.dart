import 'dart:io';
import 'package:flutter/material.dart';
import 'main.dart';
import 'perfil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'operation.dart';

var caloriasConsumidas = 300;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'No + quesadillas',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 131, 179, 143),
        ),
        body: SingleChildScrollView(
          child: Container(
          alignment: Alignment.topCenter,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Image(
                        image: AssetImage("assets/img/applelogo.jpg"),
                        width: 300,
                ),
                Text('\n\nCalorias para consumir: 1500'),
                Text('Calorias consumidas: ${caloriasConsumidas}'),
                Text('Calorias restantes: ${1500-caloriasConsumidas}\n'),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FifthRoute()),
                      );
                    },
                    child: Text('Registrar calorias consumidas')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SixthRoute()),
                      );
                    },
                    child: Text('Ver historial de comidas'))
              ]),
          ),
        )
      ),
    );
  }
}

// class FifthRoute extends StatelessWidget {
//   const FifthRoute({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Registra alimentos'),
//         centerTitle: true,
//         backgroundColor: Color.fromARGB(255, 131, 179, 143),
//       ),
//       body: Center(
//         child: Container(child: Text('aqui va el forms de comida')),
//       ),
//     );
//   }
// }

class FifthRoute extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String nombreComida = '';
  String calorias = '';
  String gramos = '';
  String proteina = '';
  String grasa = '';
  String carbohidratos = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Registra alimentos'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 131, 179, 143),
        ),
        body: Form(
          key: _formKey,
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Nombre de comida',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Llenar campo';
                      } else {
                        nombreComida = value;
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Calorias',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'LLenar campo';
                      } else {
                        calorias = value;
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Proteína',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'LLenar campo';
                      } else {
                        proteina = value;
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Grasa',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'LLenar campo';
                      } else {
                        grasa = value;
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Carbohidratos',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'LLenar campo';
                      } else {
                        carbohidratos = value;
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Gramos',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'LLenar campo';
                      } else {
                        gramos = value;
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Validate will return true if the form is valid, or false if
                        // the form is invalid.
                        if (_formKey.currentState!.validate()) {
                          
                          caloriasConsumidas = caloriasConsumidas + int.parse(calorias);
                          sendFood(nombreComida, calorias, proteina, grasa,
                              carbohidratos, gramos);
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => MyApp()),
                            (Route<dynamic> route) => false,
                          );
                        } else {}
                      },
                      child: const Text('Submit'),
                    ),
                  ),
                ]),
          ),
        ));
  }
}

class SixthRoute extends StatelessWidget {
  const SixthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ver alimentos'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 131, 179, 143),
      ),
      body: SingleChildScrollView(
            child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
          color: Colors.grey.shade100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Expanded(
                      child: Text(
                    'Comidas',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(Icons.food_bank_rounded , size: 40, color: Colors.blueGrey)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                 Expanded(
                      child: Text(
                    '\nTacos\n\nCalorias: 300\nProteína: 10\nGrasa: 50\nCarbohidratos: 10\nGramos: 300\n\n\n',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                 Expanded(
                      child: Text(
                    'Manzana\n\nCalorias: 100\nProteína: 1\nGrasa: 1\nCarbohidratos: 1\nGramos: 100\n\n\n',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
                ],
              ),
              
            ],
          ),
        )
      )
    );
  }
}