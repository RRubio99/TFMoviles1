import 'package:flutter/material.dart';

class Nosotros extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
          title: const Text('Nosotros'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 131, 179, 143)),
      body: SingleChildScrollView(
          child: Container(
              alignment: Alignment.center,

              //padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      const Image(
                        image: AssetImage("assets/img/applelogo.jpg"),
                        width: 300,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Expanded(
                          child: Text(
                        '\nNo mas quesadillas\n',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: const [
                      Expanded(
                          child: Text(
                        '\nCumple tus metas fisicas con nuestro tracker de calorias!\n',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: const [
                      Expanded(
                          child: Text(
                        '\nA traves de esta aplicacion vas a poder llevar la cuenta de lo que comes para poder subir o bajar de peso segun tus metas personales!\n',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ))
                    ],
                  ),
                ],
              ))));
}