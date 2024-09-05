import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        sectionTitle('Populares Netflix'),
        horizontalList([
          'assets/images/branquelas.jpg',
          'assets/images/coisa.jpg',
          'assets/images/depois.jpg',
          'assets/images/kick.jpg',
          'assets/images/lenda.jpg',
        ]),
        sectionTitle('Em Alta'),
        horizontalList([
          'assets/images/avatar.jpg',
          'assets/images/deadpool.jpg',
          'assets/images/panico.jpg',
          'assets/images/soldado.jpg',
          'assets/images/tropa.jpg',
        ]),
        sectionTitle('Lançamentos'),
        horizontalList([
          'assets/images/xmen.jpg',
          'assets/images/treinamento.jpg',
          'assets/images/querido.jpg',
          'assets/images/gente.jpg',
          'assets/images/hell.jpg',
        ]),
      ],
    );
  }

  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget horizontalList(List<String> imagePaths) {
    return SizedBox(
      height: 200, 
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return filmeCard(imagePaths[index]);
        },
      ),
    );
  }

  Widget filmeCard(String imagePath) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.asset(
          imagePath,
          height: 200,
          width: 130,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
