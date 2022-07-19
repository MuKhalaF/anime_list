import 'package:anime_list/model/heroscar.dart';
import 'package:anime_list/screens/ch_detalis_screen.dart';
import 'package:flutter/material.dart';

class AnimeListScreen extends StatelessWidget {
  const AnimeListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Characters List')),
        ),
        body: ListView.builder(
            itemCount: animeListScreen.length,
            itemBuilder: (context, index) {
              Heroscar heroscar = animeListScreen[index];
              return Card(
                child: ListTile(
                  title: Text(heroscar.title),
                  subtitle: Text(heroscar.text),
                  leading: Image.network(heroscar.images),
                  trailing: const Icon(Icons.arrow_forward_ios_sharp),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChdetailsScreen(heroscar)));
                  },
                ),
              );
            }));
  }
}
