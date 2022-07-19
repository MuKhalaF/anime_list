import 'package:anime_list/model/heroscar.dart';
import 'package:flutter/material.dart';

class ChdetailsScreen extends StatelessWidget {
  final Heroscar anime;

  ChdetailsScreen(this.anime);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(anime.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.network(anime.images),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  anime.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.deepPurple,
                      fontFamily: 'Hangyaku',
                      fontStyle: FontStyle.italic,
                      fontSize: 30.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  anime.desciption,
                  textAlign: TextAlign.justify,
                  style:
                      const TextStyle(fontFamily: 'Hangyaku2', fontSize: 22.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
