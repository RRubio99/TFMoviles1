import 'package:flutter/material.dart';

class Resenias extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
          title: const Text('Log in'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 131, 179, 143)),
      body: SingleChildScrollView(
          //color: Colors.orange.shade400,
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
                  'Me encanta venir con mis hijos a pasar el fin de semana disfrutado del solecito',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: const [
                Icon(Icons.star, size: 40, color: Colors.yellow),
                Icon(Icons.star, size: 40, color: Colors.yellow),
                Icon(Icons.star, size: 40, color: Colors.yellow),
                Icon(Icons.star, size: 40, color: Colors.yellow),
                Icon(Icons.star_half, size: 40, color: Colors.yellow),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: const [
                Expanded(
                    child: Text(
                  '\n\n Siempre nos reciben con mucho cariño y alegria!',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: const [
                Icon(Icons.star, size: 40, color: Colors.yellow),
                Icon(Icons.star, size: 40, color: Colors.yellow),
                Icon(Icons.star, size: 40, color: Colors.yellow),
                Icon(Icons.star, size: 40, color: Colors.yellow),
                Icon(Icons.star, size: 40, color: Colors.yellow),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: const [
                Expanded(
                    child: Text(
                  '\n\nMuy comodo y gran lugar para disfrutar con amigos pero esta un poco caro',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: const [
                Icon(Icons.star, size: 40, color: Colors.yellow),
                Icon(Icons.star, size: 40, color: Colors.yellow),
                Icon(Icons.star, size: 40, color: Colors.yellow),
                Icon(Icons.star, size: 40, color: Colors.yellow),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: const [
                Expanded(
                    child: Text(
                  '\n\n por siempre sere fan del solecito :)',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: const [
                Icon(Icons.star, size: 40, color: Colors.yellow),
                Icon(Icons.star, size: 40, color: Colors.yellow),
                Icon(Icons.star, size: 40, color: Colors.yellow),
                Icon(Icons.star, size: 40, color: Colors.yellow),
                Icon(Icons.star, size: 40, color: Colors.yellow),
              ],
            ),
          ],
        ),
      )));
}
