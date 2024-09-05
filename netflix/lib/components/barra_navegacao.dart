import 'package:flutter/material.dart';

class BarraNavegacao extends StatelessWidget {
  const BarraNavegacao({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: Colors.black,
      indicatorColor: Colors.red,
      labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home, color: Colors.white),
          label: 'Início',
        ),
        NavigationDestination(
          icon: Icon(Icons.videogame_asset, color: Colors.white),
          label: 'Jogos',
        ),
        NavigationDestination(
          icon: Icon(Icons.tv, color: Colors.white),
          label: 'Em breve',
        ),
        NavigationDestination(
          icon: Icon(Icons.download, color: Colors.white),
          label: 'Downloads',
        ),
        NavigationDestination(
          icon: Icon(Icons.more_horiz, color: Colors.white),
          label: 'Mais',
        ),
      ],
    );
  }
}
