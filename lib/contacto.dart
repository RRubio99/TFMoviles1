import 'dart:io';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contacto extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Contacto> {
  openwhatsapp(String message, String destinatario) async {
    var whatsapp = destinatario;
    var whatsappURl_android =
        "whatsapp://send?phone=" + whatsapp + "&text=" + message;
    var whatappURL_ios = "https://wa.me/$whatsapp?text=${Uri.parse(message)}";
    if (Platform.isIOS) {
      // for iOS phone only
      if (await canLaunch(whatappURL_ios)) {
        await launch(whatappURL_ios, forceSafariVC: false);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("whatsapp no instalado")));
      }
    } else {
      // android , web
      if (await canLaunch(whatsappURl_android)) {
        await launch(whatsappURl_android);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("whatsapp no installed")));
      }
    }
  }

  Future<void> _launchUrl() async {
    var _url = Uri.parse("sms:525559175602?body=Compra%20quesadillas");
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: const Text('Contacto'),
              centerTitle: true,
              backgroundColor: Color.fromARGB(255, 131, 179, 143)),
          body: Center(
              child: Column(children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: const [
                Expanded(
                    child: Text(
                  '\nContáctanos a través de WhatsApp.\n',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ))
              ],
            ),
            Container(
              margin: EdgeInsets.all(30),
              width: 200,
              child: TextButton(
                child: Text(
                  'Whatsapp',
                  style: TextStyle(fontSize: 30.0),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                  onPrimary: Colors.white,
                  onSurface: Colors.grey,
                ),
                onPressed: () {
                  String mensaje = "Compra una quesadilla";
                  String destinatario = "+525559175602";
                  openwhatsapp(mensaje, destinatario);
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(30),
              width: 200,
              child: TextButton(
                child: Text(
                  'SMS',
                  style: TextStyle(fontSize: 30.0),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                  onPrimary: Colors.white,
                  onSurface: Colors.grey,
                ),
                onPressed:  _launchUrl,
              ),
            )
          ]))),
    );
  }
}
