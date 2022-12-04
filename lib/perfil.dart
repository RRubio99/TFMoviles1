import 'dart:io';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'main.dart';
import 'operation.dart';

var nombrePerfil = 'Rodolfo';
var edad = '23';
var altura = '2.10 m';
var peso = '50 kg';
var calorias = '2000';
var metas = 'Bajar de peso';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mi perfil'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 131, 179, 143),
        ),
        body: 
        Scaffold(
          body: SingleChildScrollView(
            child: Container(
              alignment: Alignment.topCenter,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const Image(
                        image: AssetImage("assets/img/perfil.png"),
                        width: 300,
                    ),
                    Text('\n\nNombre: ${nombrePerfil}'),
                    Text('Edad: ${edad}'),
                    Text('Altura: ${altura}\n'),
                    Text('Peso: ${peso}\n'),
                    Text('Reto de calorías: ${calorias}\n'),
                    Text('Meta: ${metas}\n'),
                  ],
                )
              )
            ),
          floatingActionButton: Wrap(
            //will break to another line on overflow
            direction: Axis.horizontal, //use vertical to show  on vertical axis
            children: <Widget>[
              Container(
                  margin: EdgeInsets.all(10),
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondRoute()),
                      );
                    },
                    child: const Text('FAQ'),
                  )), //button first

              Container(
                  margin: EdgeInsets.all(10),
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThirdRoute()),
                      );
                    },
                    backgroundColor: Colors.deepPurpleAccent,
                    child: const Text('Fisico'),
                  )), // button second

              Container(
                  margin: EdgeInsets.all(10),
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForthRoute()),
                      );
                    },
                    backgroundColor: Colors.deepOrangeAccent,
                    child: const Text('TDEE'),
                  )), // button third
              // Container(
              //     child: Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     Text(
              //         'Aqui podemos poner como su info de la cuenta como su nombre y asi?'),
              //   ],
              // )),
              // Add more buttons here
            ],
          ),
        ));
  }
}

// class Cuenta extends StatelessWidget {
//   const Cuenta({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Mi Cuenta'),
//         ),
//         body: Container(
//           alignment: Alignment.topCenter,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     const Text('aqui pondria yo el nombre y usuario y asi')
//                   ])
//             ],
//           ),
//         ));
//   }
// }

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('FAQ'),
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
                children: const [
                  Expanded(
                      child: Text(
                    '¿De dónde nace esta aplicación?\n\nR: Nace de la necesidad de una aplicación que nos evite consumir más productivo lácteo dentro de una tortilla.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: const [
                  Icon(Icons.question_mark, size: 40, color: Colors.red),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: const [
                  Expanded(
                      child: Text(
                    '\n¿Es posible que baje 20 kilos en un tiempo de 3 semanas?\n\nR: No lo recomendamos, aunque es posible, tu felicidad vale más.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: const [
                  Icon(Icons.question_mark, size: 40, color: Colors.red),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: const [
                  Expanded(
                      child: Text(
                    '\n¿Hay devoluciones?\n\nR: Es gratis.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: const [
                  Icon(Icons.question_mark, size: 40, color: Colors.red),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: const [
                  Expanded(
                      child: Text(
                    '\n¿Cómo puedo meter las comidas que he consumido en este día?\n\nR: La aplicación ofrece un formulario para ingresar la información de las comidas consumidas.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: const [
                  Icon(Icons.question_mark, size: 40, color: Colors.red),
                ],
              )
            ],
          ),
        )));
  }
}

class ThirdRoute extends StatelessWidget {
  final _formKeyThird = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Registra tus datos fisicos'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 131, 179, 143),
        ),
        body: Form(
          key: _formKeyThird,
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Nombre',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Llenar campo';
                      } else {
                        nombrePerfil = value;
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Edad',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'LLenar campo';
                      } else {
                        edad = value;
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Altura',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'LLenar campo';
                      } else {
                        altura = value;
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Peso',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'LLenar campo';
                      } else {
                        peso = value;
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Calorias que debes consumir',
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
                      hintText: 'Describe tus metas',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'LLenar campo';
                      } else {
                        metas = value;
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
                        if (_formKeyThird.currentState!.validate()) {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => Perfil()),
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

class ForthRoute extends StatelessWidget {
  const ForthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calcular mi TDEE'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 131, 179, 143),
      ),
      body: const WebView(
        initialUrl: 'https://tdeecalculator.net/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}