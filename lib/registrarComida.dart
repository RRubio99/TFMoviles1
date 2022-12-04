import 'dart:io';
import 'package:flutter/material.dart';
import 'perfil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'operation.dart';
import 'home.dart';

class FifthRoute extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();
  String nombreComida='';
  String  calorias='';
  String gramos='';
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
                          sendFood(nombreComida, calorias, proteina, grasa, carbohidratos, gramos);
                          print(nombreComida);
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                            (Route<dynamic> route) => false,
                          );
                        } else {}
                      },
                      child: const Text('Submit'),
                    ),
                  ),
                ]),
          ),
        )
      );
  }
}