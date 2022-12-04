import 'dart:io';
import 'package:flutter/material.dart';
import 'perfil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'operation.dart';
import 'home.dart';

class SixthRoute extends StatelessWidget {
  
  final _formKey = GlobalKey<FormState>();

  String nombre_comida='';
  String  calorias='';
  String gramos='';
  String proteina = '';
  String grasa = '';
  String carbohidratos = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ver historial de  alimentos'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 131, 179, 143),
      ),
      body: Form(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Ingresa tu nombre',
              labelText: 'Nombre',
            ),
          ),
          new Container(
              child: new ElevatedButton(
            child: Text('Submit'),
            onPressed:() {
                        // Validate will return true if the form is valid, or false if
                        // the form is invalid.
                        if (_formKey.currentState!.validate()) {
                          sendFood(nombre_comida, calorias, proteina, grasa, carbohidratos, gramos);
                          print(nombre_comida);
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                            (Route<dynamic> route) => false,
                          );
                        } else {}
            },
          ))
        ],
      )),
    );
  }
}
