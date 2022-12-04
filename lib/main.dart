import 'package:flutter/material.dart';
import 'nosotros.dart';
import 'contacto.dart';
import 'web.dart';
import 'perfil.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'No + Quesadillas',
        home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 2;
  final List<Widget> screens = [
    Nosotros(),
    Web(),
    Home(),
    Contacto(),
    Perfil(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(255, 131, 179, 143),
          selectedItemColor: Color.fromARGB(255, 61, 82, 66),
          unselectedItemColor: Colors.white70,
          iconSize: 20,
          //selectedFontSize: 25,
          //unselectedFontSize: 16,
          // showSelectedLabels: false,
          // showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.apple_sharp),
              label: 'Nosotros',
              //backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.run_circle),
              label: 'Ejercicio',
              //backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              //backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.phone_android),
              label: 'Contacto',
              //backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil',
              //backgroundColor: Colors.blue,
            )
          ],
        ),
      );
}
